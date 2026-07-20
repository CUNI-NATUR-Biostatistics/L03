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


#----------------------------------------------------------#
# Save animation -----
#----------------------------------------------------------#

save_local_gif <- function(
  frame_files,
  filename,
  fps = 1
) {
  path_output <-
    here::here(path_materials, filename)

  magick::image_read(frame_files) |>
    magick::image_animate(fps = fps) |>
    magick::image_write(path = path_output)

  return(invisible(path_output))
}
