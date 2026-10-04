# L03 learning-material diagnostic Extras

## Approval and scope

- Date: 2026-10-04
- Branch: `lesson/l03-diagnostic-extras`
- Human approver: Ondřej Mottl
- Decision: the instructor requested optional Extras for the Q–Q plot of residuals, leverage (residuals versus leverage) and Cook's distance, with visible code shown as base-R and `{ggplot2}` tabs. Scale-location and the `plot(model)` overview are out of scope.
- Scope: optional `Doplňující` boxes inside "Co musí být rozumné, aby lineární model odpovídal na naši otázku?" plus one bridge-sentence edit. The core route, the presentation, the exercise and the glossary are unchanged.
- Boundary change: this amendment deliberately revises the 2026-09-28 ledger, which had excluded a Q–Q plot and Cook's distance from L03. Both now appear only as optional Extras. L06 (Q–Q) and L07/L09 (Cook's distance) keep their own explanations, and L09 already refers to Cook's distance as known from earlier lessons.

## Mandatory story map

- Artifact: Learning materials amendment
- Story-map status: complete
- Heading-strip audit completed: [x]
- Knowledge-state audit completed: [x]
- Human story-map approval: approved
- Approved by: Ondřej Mottl
- Approval date: 2026-10-04
- Approval decision and requested revisions: Story map and knowledge-state ledger approved as written, with no revisions requested.

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Residual-shape tool | Doplňující: Q–Q graf residuí | Placed after "Doplňující: předpoklady se týkají residuí kolem modelu". Builds on quartiles and quantiles from L01: sorted residuals are compared with the quantiles expected under a bell-shaped (normal) distribution. Base-R `qqnorm()` + `qqline()` and `{ggplot2}` `stat_qq()` + `stat_qq_line()` tabs on `vec_rezidua`. Reading guide: points close to the line; both ends bending away from the line mean heavier tails; one bent end or an arc means skew. For iris the points follow the line with small deviations at the ends. It is not a pass/fail test, and small samples wobble. |
| 2 | Bridge edit | Doplňující: odlehlý, krajní a vlivný bod nejsou totéž (existing) | Replace "Formální míru vlivu si ukážeme až u modelu s více prediktory." with a sentence pointing to the two following boxes as optional measures of "krajní" and "vlivný". |
| 3 | Extreme-predictor measure | Doplňující: jak „krajní“ je květ – pákový efekt | `hatvalues(mod_listky)` stored as `vec_pakovy_efekt`. With one predictor, leverage grows only with the distance of a flower's width from the mean width; it does not depend on the measured length. Tabs plot leverage (x) against residuum in cm (y), so the two concepts from box 2 become two axes. For iris the highest leverage belongs to the widest petals (all *virginica*), and these flowers lie below the line: the model overestimates their length. |
| 4 | Influence measure | Doplňující: Cookova vzdálenost – které květy hýbou přímkou? | `cooks.distance(mod_listky)` as a needle plot by flower order (base `plot(type = "h")`, `{ggplot2}` `geom_segment()`), with the 4/n line as orientation only. A small table of the flowers with the largest values (width, length, residuum, leverage). For iris every flower above 4/n is *virginica* (large negative residual combined with high leverage), which points ahead to the next section, "Co model nevidí: druhy kosatců". A sensitivity check refits the model without the most influential flower and compares the intercept and slope; for iris the slope changes only slightly (about 2.23 → 2.25). Closing message: a high value is a reason to check the measurement and the context, not to delete the row. All numbers come from inline R. |

## Knowledge-state ledger

| Concept block | May assume before | Introduced or earned here | Must not assume yet | Evidence or experience |
|---|---|---|---|---|
| Q–Q plot of residuals (optional) | Residuals and their histogram; quartiles and quantiles (L01); the idea that residual shape matters for later uncertainty. | Reading a Q–Q plot: sorted residuals against expected quantiles; recognising heavy tails and skew. | Formal normality tests, exact normality, pass/fail rules, remedies such as transformations. | `vec_rezidua` from `mod_listky`; the existing residual histogram as a familiar comparison. |
| Leverage (optional) | The distinction between outlying, extreme and influential points from the existing box; fitted values. | Leverage as a measure of how extreme a flower's predictor value is; it is independent of the response. | Standardised or studentised residuals, the hat matrix, leverage cut-offs as rules. | `hatvalues(mod_listky)` plotted against raw residuals in cm. |
| Cook's distance (optional) | Leverage and residuum from the preceding box; intercept and slope from `coef()`. | Cook's distance combines residual size and leverage into one measure of influence on the fitted line; 4/n is an orientation line only; a sensitivity check by refitting. | Automatic deletion, formal outlier tests, robust regression. | `cooks.distance(mod_listky)`; refit without the most influential flower and compare `coef()`. |

## Leakage audit

- All three tools stay inside collapsed optional boxes; the core route and the summary do not depend on them.
- No formal tests or cut-off rules are introduced; 4/n is described as orientation only, consistent with L09.
- Standardised residuals are avoided by plotting raw residuals in cm against leverage instead of using `plot(model, which = 5)`.

## Review and validation

- Independent amendment review: a separate read-only reviewer subagent (`vision-corrector.md`) reviewed the full `skripta.qmd` and this record.
  - Blocking finding, resolved: the claim that the model errs "in a similar direction" for *virginica* was false, because 3 of the 11 flowers above 4/n have large positive residuals. The text also relied on a hardcoded "last 50 rows". Both are replaced by a visible `table()` of species above 4/n and inline counts of over- and underestimated flowers.
  - Should-fix findings, resolved:
    - The Q–Q reading guide now explains the points, axes and reference line.
    - The text now says leverage is symmetric around the mean width and has no units.
    - "Kvantil" is now introduced as the general name for percentiles and quartiles.
    - Glossary TODO added for `qq-graf`, `pakovy-efekt` and `cookova-vzdalenost`.
  - Optional findings applied: the deletion sentence is reworded so it no longer reads as a non sequitur; new code uses named arguments; a comment explains the table's row names; reference lines are thicker; minor wording fixes.
  - Not resolved: Quarto's Typst tabset fallback lists the tab headings in the PDF table of contents (14.2.a–f). Neither `{.unnumbered .unlisted}` nor a deeper heading level changes this. The file's existing tabsets have the same behaviour (sections 7, 13.3 and 13.4), so this is left for a course-wide filter fix.
- Glossary coverage: first-occurrence-per-section rule applied. Duplicate wrappers for `histogram`, `residuum`, `prediktor` and `sklon` were removed, and `kvantil` is wrapped at its first use in the section. Q–Q graf, pákový efekt and Cookova vzdálenost have no slug yet (TODO comment added). A pre-existing first use of "rozdělení" (subsection "Odezva a residua mohou mít jiný tvar") is unwrapped; it lies outside this amendment.
- Source checks: UTF-8 without BOM, no replacement characters, LF line endings unchanged, `git diff --check` passed.
- Render: project-native HTML and Typst PDF render passed (`R/render_skripta.R`); the PDF now has 43 pages, up from 31. All seven tabsets are present in the HTML. New PDF pages 29–40 were inspected visually. A `{{< pagebreak >}}` before the existing box "odlehlý, krajní a vlivný bod" fixes an orphaned callout title. The top-5 table no longer wraps.
- Incidental working-tree changes: the render synchronised the shared `_brand` theme and modified files under `theme/`, `R/Functions/` and the logos. These are not part of this amendment and must not be committed with it.
