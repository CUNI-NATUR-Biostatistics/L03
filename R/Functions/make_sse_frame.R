# CUNI-NATUR-Biostatistics L03 — same-data residual-square view, 2026.
# Build one frame -----
make_sse_frame <- function(data_flowers, intercept, slope, colours) {
  data_frame <-
    data_flowers |>
    dplyr::mutate(
      odhadnuta_delka = intercept + slope * sirka_listku,
      residuum = delka_listku - odhadnuta_delka,
      ctverec_rezidua = residuum^2,
      kvet = factor(dplyr::row_number(), labels = paste("květ", seq_len(nrow(data_flowers)))),
      # With coord_fixed(ratio=.42), this correction makes physical squares.
      xmax = sirka_listku + 0.42 * abs(residuum),
      ymin = pmin(delka_listku, odhadnuta_delka),
      ymax = pmax(delka_listku, odhadnuta_delka)
    )

  plot_squares <-
    ggplot2::ggplot(
      data = data_frame,
      mapping = ggplot2::aes(x = sirka_listku, y = delka_listku)
    ) +
    ggplot2::geom_rect(
      mapping = ggplot2::aes(xmin = sirka_listku, xmax = xmax, ymin = ymin, ymax = ymax),
      inherit.aes = FALSE,
      fill = colours["interpretace"],
      color = colours["interpretace"],
      alpha = 0.28
    ) +
    ggplot2::geom_abline(intercept = intercept, slope = slope, color = colours["model"], linewidth = 1.3) +
    ggplot2::geom_segment(ggplot2::aes(xend = sirka_listku, yend = odhadnuta_delka), color = colours["interpretace"], linewidth = 1.1) +
    ggplot2::geom_point(color = colours["data"], size = 3) +
    ggplot2::coord_fixed(ratio = 0.42, xlim = c(0, 3.8), ylim = c(0, 8.5), expand = FALSE) +
    ggplot2::labs(
      x = "Šířka (cm)", y = "Délka (cm)",
      title = paste0("Přímka pro stejné květy\nintercept = ", format_cz(intercept), "; sklon = ", format_cz(slope))
    ) +
    theme_biostat(base_size = 20)

  plot_contributions <-
    ggplot2::ggplot(data = data_frame, mapping = ggplot2::aes(x = kvet, y = ctverec_rezidua)) +
    ggplot2::geom_col(fill = colours["interpretace"], alpha = 0.72, width = 0.68) +
    ggplot2::geom_text(ggplot2::aes(label = format_cz(ctverec_rezidua)), vjust = -0.5, size = 6) +
    ggplot2::scale_y_continuous(limits = c(0, 7.5), expand = ggplot2::expansion(mult = c(0, 0.02))) +
    ggplot2::labs(
      x = NULL, y = "Čtverec residua (cm²)", title = "Čtyři příspěvky",
      subtitle = paste0("SSE = ", format_cz(sum(data_frame$ctverec_rezidua)), " cm²")
    ) +
    theme_biostat(base_size = 20)

  ggplot2::ggplot() +
    ggplot2::annotation_custom(ggplot2::ggplotGrob(plot_squares), xmin = 0, xmax = 1.15, ymin = 0, ymax = 1) +
    ggplot2::annotation_custom(ggplot2::ggplotGrob(plot_contributions), xmin = 1.15, xmax = 2, ymin = 0, ymax = 1) +
    ggplot2::coord_cartesian(xlim = c(0, 2), ylim = c(0, 1), expand = FALSE) +
    ggplot2::theme_void()
}
