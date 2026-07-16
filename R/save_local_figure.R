#----------------------------------------------------------#
#
#
#             CUNI-NATUR-Biostatistics L03
#
#                 Save local figure
#
#                    Ondřej Mottl
#                        2026
#
#----------------------------------------------------------#


#----------------------------------------------------------#
# Save figure -----
#----------------------------------------------------------#

save_local_figure <- function(
  plot,
  filename,
  width = 1600,
  height = 800
) {
  plot_canvas <-
    plot +
    ggview::canvas(
      width = width,
      height = height,
      units = "px"
    )

  res_file <-
    ggview::save_ggplot(
      plot = plot_canvas,
      file = here::here(path_materials, filename)
    )

  return(invisible(res_file))
}
