# L03 exercise blueprint

## Status and teaching boundary

- Date: 2026-09-21
- Lesson: L03, one quantitative predictor in a linear model
- Source: approved L03 written lesson and presentation, `_internal/osnova_lekci.md`, and L01/L02 practical scripts
- Branch: `lesson/l03-exercises`, created from clean `main` after presentation work merged
- Human exercise approval: Ondřej Mottl, 2026-09-22, in the current conversation
- Status: independent re-review passed with no findings; human approved; PR pending

The worksheet serves a facilitated 90-minute practical and independent study. The core route has 69 minutes of direct work; approximately 21 minutes remain for explanation and slower groups. Optional tasks are outside this budget. Teachers may skip the short L02 refresher when students are comfortable with paired observations, `plot()`, `complete.cases()`, and running multiline commands.

## Outcomes, starting states, and timing

| Segment | Approved outcome and purpose | Starting state | Direct work |
| --- | --- | --- | ---: |
| Preparation | Obtain and open the script; know where to run commands and answer; check the penguin package. | Downloaded `cviceni.R`; RStudio. | 5 min |
| `L03-U01` | Translate petal question into response, predictor, and observational unit; inspect data. | Runnable `data_kosatce` built from `iris`. | 6 min |
| `L03-U02` | Read direction and variability in a scatterplot before fitting. | `data_kosatce`; L02 `plot()` knowledge. | 6 min |
| `L03-U03` | Fit `lm(y ~ x)` and interpret slope in biological units. | `data_kosatce`; worked artificial-line calculation. | 8 min |
| `L03-U04` | Explain fitted value and measured-minus-fitted residual for one flower. | Student-created `mod_listky`; first iris row. | 8 min |
| `L03-U05` | Read residual-versus-fitted graph and find species structure left by one-predictor model. | `mod_listky`, `data_kosatce`, named species colours; worked small diagnostic plot. | 9 min |
| `L03-U06` | Transfer paired-data check to penguins and inspect scatterplot. | `data_tucnaci_raw` and two-column `data_mereni_par`. | 8 min |
| `L03-U07` | Fit second one-predictor model; interpret slope without interpreting out-of-range intercept. | Student-created 342-row `data_tucnaci`. | 9 min |
| `L03-U08` | Complete question, data check, graph, model, residual check, qualified biological answer. | Student-created `mod_ploutve`; same penguins. | 10 min |

The weekly outcomes are fitting a one-predictor model, interpreting direction and effect size, explaining residuals, and reading a first diagnostic graph. U01-U02 bridge L02's graph-and-association outcome. U06-U08 transfer the full workflow without adding a new statistical method.

## Prerequisites and facilitation

Students may use L01 objects, rows, units, missing values, and base R graphs. L02 adds paired rows, scatterplots, `complete.cases()`, correlation as association rather than causation, and optional `ggplot2` syntax. A permanent, skippable reminder covers obtaining the file, RStudio script/Console/Plots, `Ctrl + Enter`, paired observations, and the L02 graph. No project, CSV import, working-directory change, or general package-management lesson is required.

During facilitation, compare predicted directions after U02, connect residual sign with position above or below the line after U04, and discuss species structure after U05. Let students repeat the sequence with less scaffolding on penguins; compare slope units and diagnostic conclusions after U08. These are teacher cues, so they stay here rather than in the public script. The public script has expected-result criteria and two staged hints per task for self-study.

## Data, objects, and optional work

- `iris` is bundled with R: 150 flowers, with `Petal.Width` and `Petal.Length` in cm. Student objects are `data_kosatce`, `mod_listky`, and named species colours. The petal slope is about 2.23 cm per 1 cm width. The model intentionally omits species so remaining structure can be seen in residuals.
- `palmerpenguins::penguins` is L02's dataset, with one measured individual per row. Two rows lack both flipper length and mass; select complete pairs jointly to retain 342 observations. Student objects are `data_tucnaci_raw`, `data_mereni_par`, `data_tucnaci`, and `mod_ploutve`. Slope is about 49.7 g/mm (497 g per 10 mm). Intercept is at zero mm, outside observed 172-231 mm.
- `palmerpenguins` is required and checked without attachment or automatic installation. `ggplot2` is optional and checked only after the core route. No external data files, private helpers, or path assumptions.
- `L03-N01` uses `iris` petal length and sepal length (both cm) for a fresh scatterplot, one-predictor fit, slope interpretation, and residual check. It starts from a short runnable two-column setup and takes roughly 12–15 minutes of optional independent work.
- `L03-N02` uses `palmerpenguins::penguins` bill length (mm) and body mass (g). It rechecks complete pairs, then repeats the graph → model → residual → qualified interpretation workflow in roughly 15–18 optional minutes. Neither transfer task changes the 69-minute core route.
- `L03-N03` redraws the iris scatterplot and stored model line with `ggplot2`; `L03-N04` redraws iris residuals with species colours. These remain the owner's explicit exception to the base-R-only exercise default, follow L02's optional graph practice, and do not refit through a plotting shortcut or add uncertainty bands.

Keep confidence intervals and sampling uncertainty for L04, formal tests and p-values for L05, and multiple-predictor models, causal identification, and a full answer key outside L03. The penguin association is not a causal effect claim.

## Review and release gates

Before human review, parse and run the unfilled script in a clean R session and temporary working directory, solve every task in an untracked reference harness, verify expected values and Czech-labelled saved plots, check UTF-8 and prohibited patterns, audit first use of objects and actions, and rehearse obtaining the script. Assign the complete script and this blueprint to a separate read-only reviewer using `_internal/.ai/agents/exercise-reviewer.md`; resolve credible findings and recheck affected paths. Ondřej Mottl approved the complete script on 2026-09-22, after which the release manifest and README link were added. Validate the release after the exercise pull request merges. Git and publishing operations retain separate authorization boundaries.

## Validation and independent review

- The revised unfilled script parsed and ran with `Rscript --vanilla` from a clean R session and temporary working directory. It does not depend on answers typed into task workspaces or the repository working directory.
- An untracked reference harness solved all eight core and four optional tasks. It verified the original iris and penguin numbers plus 150 complete petal–sepal observations with slope about 0.409 cm/cm, and 342 complete bill-length–mass pairs with slope about 87.4 g/mm.
- Ten saved base-R and `ggplot2` graphs were visually inspected under a working UTF-8 R locale. Czech labels, units, species colours, stored iris model line, and the two new residual plots rendered correctly. The default validation shell requested an unavailable locale, so the author set `LC_ALL=cs_CZ.UTF-8` for plot validation; no locale command appears in student code.
- All 12 task IDs and all required task fields are present. The worksheet, blueprint, and stage log are UTF-8 without BOM or replacement characters; `git diff --check` passed. The earlier missing-`palmerpenguins` preflight simulation produced a clear Czech recovery message.
- The first ten-task draft passed independent read-only review after corrections. A fresh complete read-only review of the 12-task worksheet and updated blueprint returned `No findings`; the reviewer also independently confirmed the new slopes and assessed the 69-minute core and 27–33-minute optional transfer budget as plausible.
- After human approval, `website-release.yml` includes `Exercises/cviceni.R` and the README links to `/L03/current/code/cviceni.R`. The canonical course packager built a temporary bundle with a validation-only tag; its `code/cviceni.R` matched the source SHA-256 and appeared in the generated public manifest. No release or tag was created.
- The 69-minute direct-work budget is unchanged and plausible on paper; U05 and U08 still need a novice classroom pacing trial. The planned `/L03/current/code/cviceni.R` URL currently returns HTTP 404 because the existing stable release predates exercise inclusion. Rehearse the live route after an authorized stable release.
