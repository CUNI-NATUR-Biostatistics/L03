#----------------------------------------------------------#
#
#
#                          L03
#
#              Prepare iris and penguin data
#
#                     O. Mottl
#                       2026
#
#----------------------------------------------------------#


#----------------------------------------------------------#
# Prepare the iris teaching table -----
#----------------------------------------------------------#

data_kosatce <-
  data.frame(
    sirka_listku = iris$Petal.Width,
    delka_listku = iris$Petal.Length,
    druh = as.character(iris$Species),
    delka_kalisniho_listku = iris$Sepal.Length
  )

if (
  nrow(data_kosatce) != 150L ||
    anyNA(data_kosatce)
) {
  cli::cli_abort(
    "The iris teaching table failed its row or missing-value check."
  )
}


#----------------------------------------------------------#
# Prepare the penguin transfer table -----
#----------------------------------------------------------#

if (
  as.character(packageVersion("palmerpenguins")) != "0.1.1"
) {
  cli::cli_abort(
    "Package {.pkg palmerpenguins} version 0.1.1 is required to reproduce the teaching data."
  )
}

data_tucnaci <-
  palmerpenguins::penguins |>
  dplyr::transmute(
    bill_length_mm = .data$bill_length_mm,
    flipper_length_mm = .data$flipper_length_mm,
    body_mass_g = .data$body_mass_g
  ) |>
  as.data.frame()

if (
  nrow(data_tucnaci) != 344L ||
    sum(complete.cases(data_tucnaci)) != 342L
) {
  cli::cli_abort(
    "The penguin transfer table failed its row or completeness check."
  )
}


#----------------------------------------------------------#
# Save both teaching tables -----
#----------------------------------------------------------#

readr::write_csv(
  x = data_kosatce,
  file = here::here(
    "data",
    "kosatce.csv"
  ),
  na = ""
)

readr::write_csv(
  x = data_tucnaci,
  file = here::here(
    "data",
    "palmer_penguins.csv"
  ),
  na = ""
)
