library(ggplot2)
library(grid)
library(here)
library(digest)
here::i_am("R/render_pollslive_assets.R")

output_dir <- here::here("pollslive", "assets")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

penguins <- palmerpenguins::penguins
penguins <- penguins[stats::complete.cases(penguins[, c("flipper_length_mm", "body_mass_g", "species")]), ]
penguins$species <- factor(penguins$species, levels = c("Adelie", "Chinstrap", "Gentoo"))
stopifnot(nrow(penguins) == 342L)

parchment <- "#F4F1EC"
graphite <- "#2E2E2E"
orange <- "#E69A00"
light <- "#E9E4DC"
species_colours <- c(Adelie = "darkorange", Chinstrap = "mediumpurple", Gentoo = "cyan4")

plot_theme <- theme_minimal(base_size = 16) +
  theme(
    plot.background = element_rect(fill = parchment, colour = NA),
    panel.background = element_rect(fill = "#FFFFFF", colour = NA),
    panel.grid.major = element_line(colour = light, linewidth = 0.35),
    panel.grid.minor = element_blank(),
    axis.text = element_text(colour = graphite),
    axis.title = element_text(colour = graphite, face = "bold"),
    plot.title = element_text(colour = graphite, face = "bold", size = 19),
    plot.margin = margin(16, 18, 16, 18)
  )

scatter <- ggplot(penguins, aes(flipper_length_mm, body_mass_g)) +
  geom_point(colour = "#8A8A8A", alpha = 0.72, size = 2.5) +
  labs(x = "D\u00e9lka ploutve (mm)", y = "T\u011blesn\u00e1 hmotnost (g)") +
  plot_theme

histogram <- ggplot(penguins, aes(flipper_length_mm)) +
  geom_histogram(binwidth = 5, boundary = 170, fill = orange, colour = "#FFFFFF") +
  labs(x = "D\u00e9lka ploutve (mm)", y = "Po\u010det tu\u010d\u0148\u00e1k\u016f") +
  plot_theme

species_counts <- as.data.frame(table(penguins$species))
names(species_counts) <- c("species", "n")
pie <- ggplot(species_counts, aes(x = 1, y = n, fill = species)) +
  geom_col(width = 1, colour = "#FFFFFF", linewidth = 0.8) +
  coord_polar(theta = "y") +
  scale_fill_manual(values = species_colours, name = "Druh") +
  labs(x = NULL, y = NULL) +
  theme_void(base_size = 16) +
  theme(
    plot.background = element_rect(fill = parchment, colour = NA),
    legend.position = "bottom",
    legend.title = element_blank(),
    legend.text = element_text(colour = graphite, size = 11),
    legend.key.size = unit(0.65, "lines"),
    plot.margin = margin(16, 18, 16, 18)
  )

table_rows <- data.frame(
  species = c("Adelie", "Chinstrap", "Gentoo"),
  count = as.integer(species_counts$n),
  y = 3:1
)
frequency_table <- ggplot(table_rows) +
  geom_rect(aes(xmin = 0.1, xmax = 1.9, ymin = y - 0.45, ymax = y + 0.45),
            fill = c("#FFFFFF", "#F8F5F0", "#FFFFFF"), colour = light) +
  geom_text(aes(x = 0.25, y = y, label = species), hjust = 0,
            colour = graphite, size = 6) +
  geom_text(aes(x = 1.75, y = y, label = count), hjust = 1,
            colour = graphite, size = 6) +
  annotate("text", x = 0.25, y = 3.8, label = "Druh", hjust = 0,
           fontface = "bold", size = 6, colour = graphite) +
  annotate("text", x = 1.75, y = 3.8, label = "Po\u010det", hjust = 1,
           fontface = "bold", size = 6, colour = graphite) +
  coord_cartesian(xlim = c(0, 2), ylim = c(0.3, 4.1), expand = FALSE) +
  theme_void() +
  theme(plot.background = element_rect(fill = parchment, colour = NA),
        plot.margin = margin(16, 18, 16, 18))

gallery_path <- here::here(output_dir, "l02-graph-choice-gallery.png")
grDevices::png(gallery_path, width = 1800, height = 1200, res = 150, type = "cairo", bg = parchment)
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 2, widths = unit(c(1, 1), "null"),
                                           heights = unit(c(1, 1), "null"))))
plots <- list(scatter, histogram, pie, frequency_table)
for (i in seq_along(plots)) {
  row <- (i - 1L) %/% 2L + 1L
  col <- (i - 1L) %% 2L + 1L
  print(plots[[i]], vp = viewport(layout.pos.row = row, layout.pos.col = col))
  pushViewport(viewport(layout.pos.row = row, layout.pos.col = col))
  grid.text(LETTERS[[i]], x = unit(0.04, "npc"), y = unit(0.96, "npc"),
            just = c("left", "top"), gp = gpar(col = graphite, fontsize = 22, fontface = "bold"))
  popViewport()
}
popViewport()
grDevices::dev.off()

ggsave(here::here(output_dir, "l02-penguin-scatterplot.png"),
       plot = scatter + theme(text = element_text(size = 20)),
       width = 12, height = 7.5, dpi = 150, bg = parchment)

species_plot <- ggplot(penguins, aes(flipper_length_mm, body_mass_g, colour = species)) +
  geom_point(alpha = 0.72, size = 2.8) +
  scale_colour_manual(values = species_colours, name = "Druh") +
  labs(x = "D\u00e9lka ploutve (mm)", y = "T\u011blesn\u00e1 hmotnost (g)") +
  plot_theme +
  theme(text = element_text(size = 20), legend.position = "bottom",
        legend.text = element_text(size = 17), legend.title = element_text(size = 17))
ggsave(here::here(output_dir, "l02-correlation-not-causation.png"),
       plot = species_plot, width = 12, height = 7.5, dpi = 150, bg = parchment)

for (filename in c("l02-graph-choice-gallery.png", "l02-penguin-scatterplot.png",
                   "l02-correlation-not-causation.png")) {
  path <- here::here(output_dir, filename)
  cat(filename, digest(file = path, algo = "sha256"), "\n")
}
