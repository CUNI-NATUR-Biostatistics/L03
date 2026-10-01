# L03 CSV delivery maintenance

## Scope

- Date: 2026-10-01
- Branch: `data/l03-csv-delivery`
- Purpose: replace built-in/package dataset access with stable, downloadable CSV files while preserving the approved practical tasks, values, and timing.

## Data contract

- `data/kosatce.csv` contains all 150 iris rows with the four columns needed across the core and optional tasks and Czech column names.
- `data/palmer_penguins.csv` contains bill length, flipper length, and body mass for all 344 rows from `palmerpenguins::penguins` 0.1.1, including the two incomplete flipper-length/body-mass pairs. Bill length supports optional transfer task L03-N02.
- `R/prepare_l03_data.R` reproduces and validates both CSV files.
- The student script downloads the iris CSV during initial setup. It introduces the penguin download and file check immediately before the first penguin section (L03-U06), then reuses that file in optional task L03-N02. Both files use stable lesson routes and `read.csv()`.
- `website-release.yml` publishes both CSV files and their provenance note.

## Pedagogical effect

No task, expected result, hint sequence, or timing allocation changes. The added fourth iris column supplies the existing optional sepal-length transfer without a hidden fallback to `datasets::iris`.

## Validation required

- regenerate both CSV files from their reviewed sources;
- compare their values with the sources, allowing only factor-to-character serialization;
- parse and run the unfilled script from a clean R session;
- rehearse the documented script-and-data folder route;
- independently review the complete updated exercise against `Workflow/records/2026-09-21-exercise-blueprint.md`.

## Validation outcome

- The preparation script regenerated both CSV files from their reviewed sources.
- Value-by-value comparisons matched all 150 iris rows and all 344 penguin rows; the penguin extract includes bill length for L03-N02 and preserves 342 complete flipper-length/body-mass pairs.
- The complete exercise parsed and ran from a clean temporary student-style project containing only the distributed script and both CSV files.
- Manifest paths, documented SHA-256 hashes, UTF-8 without BOM, and `git diff --check` passed.
- Independent review first detected and prompted correction of the missing bill-length column and incomplete iris reuse notice. Independent re-review completed on 2026-10-01 with no remaining findings. The 69-minute direct-work budget remains plausible. Human review remains required before release.
