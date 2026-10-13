#----------------------------------------------------------#
# Verify approved local evidence for the L03 retrieval quiz
#----------------------------------------------------------#

library(here)

here::i_am("R/verify_pollslive_assets.R")

# These images are reviewed teaching inputs. Re-rendering them can change their
# bytes across R sessions and therefore makes immutable synchronization
# unreliable. R/render_pollslive_assets.R stays as their reproducible source;
# local PollsLive preparation verifies the approved bytes instead.
approved_assets <-
  c(
    "l02-graph-choice-gallery.png" =
      "26c28c7688e5e0994fd4ab5a72bda2abe50c7d5d4aefcbb08fc1daf8f3a20ee7",
    "l02-penguin-scatterplot.png" =
      "b9782c806c2563e130087eb99ffd7eb409edfa7b9fe2d6b6296455bc694cd50b",
    "l02-correlation-not-causation.png" =
      "9170317563728cd04db855e95808f63c459889c03ec469212577d087ef6e5257"
  )

asset_paths <-
  here::here("pollslive", "assets", names(approved_assets))

missing_assets <-
  names(approved_assets)[!file.exists(asset_paths)]

if (length(missing_assets) > 0L) {
  stop(
    "Missing approved PollsLive evidence assets: ",
    paste(missing_assets, collapse = ", ")
  )
}

actual_checksums <-
  unname(
    vapply(
      asset_paths,
      digest::digest,
      character(1),
      algo = "sha256",
      file = TRUE
    )
  )

changed_assets <-
  names(approved_assets)[actual_checksums != unname(approved_assets)]

if (length(changed_assets) > 0L) {
  stop(
    "Approved PollsLive evidence assets changed: ",
    paste(changed_assets, collapse = ", ")
  )
}
