# CUNI-NATUR-Biostatistics L03 — locally rendered animations, 2026.
# Save animation -----
save_local_gif <- function(frame_files, filename, fps = 1) {
  path_output <-
    here::here(path_materials, filename)

  magick::image_read(frame_files) |>
    magick::image_animate(fps = fps) |>
    magick::image_write(path = path_output)

  invisible(path_output)
}
