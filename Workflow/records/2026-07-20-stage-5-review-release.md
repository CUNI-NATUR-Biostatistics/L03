# Stage 5/6 - Review, Render, Release Readiness

## Metadata

- Week: L03
- Date: 2026-07-20
- Author: Ondřej Mottl
- Reviewer: Ondřej Mottl

## Inspiration check

- Which external pattern ended up most useful: L02/L-example-style question–answer reveals with rough notation, combined with progressive construction of one stable visual anchor.
- Which pattern looked promising but was dropped: Keeping the complete fitted-value and residual calculation on one slide; the content became clearer as a short staged sequence.
- Did any imported idea feel too advanced, too technical, or too far from model-first teaching: Symbol-first formulas did. The revised sequence introduces intercept, slope, fitted value, and residual in ordinary words before compact notation.

## Review outcomes

### Written materials review
- Key findings: Out of scope for general review; `Learning_materials/skripta.qmd` remains substantially complete. The presentation review identified one genuine alignment issue in the order used to introduce `lm()`.
- Revisions applied: Added only the agreed grammar-first `lm(formula = odezva ~ prediktor, data = data)` progression before the existing concrete model call.

### Presentation review
- Key findings:
  - Strengthen slide 2 visually, preferably with an iris photograph, and replace the weak metadata line with a more deliberate composition.
  - Correct the L02 callback: remove the fitted line, which was not introduced in L02, and show the Pearson correlation estimate instead.
  - Use fragments and substantially more breathing room on the early knowledge-state and variable-role slides.
  - Restructure the first data block to show the complete dataset first, then ask students to identify the linear increase, and only then state what the graph does and does not establish.
  - Make the candidate lines similarly plausible so the preferred line is not visually obvious before residuals and SSE are introduced.
  - Prefer verbal notation such as `intercept (a)` and `sklon (b)` over unexplained symbols, with more space around the formula.
  - Build the one-flower fitted-value graphic in stages: line, observed point, fitted point, then a rounded residual connector; use x-axis labels every 0.5 cm.
  - Simplify the residual-sign question and rebuild the worked residual from a general word-based equation to substituted values, supported by a small synchronized figure.
  - Remove the redundant static four-flower residual slide.
  - Preserve the residual-square GIF as an exemplar of the desired teaching style, enlarge it, and place the observation and explanation underneath it.
  - Reduce clutter in the SSE comparison, data-summary, model-fitting, and later diagnostic slides.
  - Stage `lm()` as grammar first, concrete formula and data second, coefficients third, and biological interpretation fourth.
  - Mirror only this `lm()` progression in the otherwise complete skripta.
- Revisions applied:
  - Rebuilt the opening with a credited iris photograph, a stronger biological-question composition, and the learning outcomes immediately after it.
  - Corrected the L02 callback by removing the fitted line and adding the Pearson correlation estimate.
  - Added fragments and spacing to the early concept slides and reordered the data sequence to whole dataset → student observation → supported conclusion.
  - Replaced the candidate lines with similarly plausible alternatives and used word-based parameter labels throughout the relevant sequence.
  - Split the one-flower fitted-value construction into four stages with 0.5 cm x-axis ticks and a rounded residual connector.
  - Split residual calculation into named general equations, substituted fitted value, and substituted residual, each synchronized with a small figure; removed the redundant four-flower slide.
  - Enlarged and relaid out the squared-residual animation, with its noticing prompt and explanatory key below it, then retained the static SSE comparison.
  - Added `summary(data_kosatce)` and staged the R sequence as grammar → concrete names → model fit → coefficients → interpretation.
  - Simplified crowded interpretation, diagnostic, and closing prompts while preserving no-vote fallback wording.
  - Added the candidate-line/residual-square animation pattern to the canonical presentation visual-rhythm guidance as a strong model-fitting example.

#### Second author pass

- Key findings:
  - State the intercept and slope of the teaching line explicitly before substituting them into the fitted-value calculation.
  - Wrap the biological-variability statement in an intentional brand component.
  - Make the squared-residual animation substantially wider, move the four-flower SSE into a subtitle, and include deliberately poor lines so the SSE range is visible.
  - Circle the complete winning row in the candidate comparison rather than only its letter.
  - Give every slope-interpretation option a visual class.
  - Further reduce density on slides 35, 36, 37, 43, and 46.
- Revisions applied:
  - Added a parameter strip that explicitly states `intercept (a) = 1.1 cm` and `sklon (b) = 2.2 cm/cm` before numerical substitution.
  - Wrapped the biological-variability statement in the branded `card-insight` component.
  - Rebuilt the animation as a wide synchronized figure: residual squares and the moving line on the left, squared residuals as bars on the right, and four-flower SSE as the bar-chart subtitle.
  - Expanded the animation path to deliberately poor lines, increasing SSE from approximately 0.45 near the best line to above 8.5.
  - Replaced the candidate table with branded rows and enclosed the complete winning row in an orange oval.
  - Applied brand panels to all slope-interpretation options.
  - Split the biological answer from its remaining uncertainties and reduced the causation, omitted-predictor, and closing slides to one main visual statement each.

#### Third author pass

- Key findings:
  - Keep every visible “Když nehlasujeme” fallback present from the start rather than revealing it as a fragment.
  - Let the synchronized SSE animation span the full content width.
  - Give candidate rows A, B, and C the same background while retaining the orange circle around the complete B row.
  - Continue using deliberate vertical spacing where the slide has room.
- Revisions applied:
  - Removed the remaining fragment class from a “Když nehlasujeme” fallback and verified the other fallbacks were already immediate.
  - Added breathing space before fallback strips on the relationship, candidate-line, SSE-choice, and slope-interpretation slides.
  - Changed the animation to a 1700 × 520 landscape canvas at 100% output width and compacted the two explanatory panels underneath it.
  - Shortened the animation axis titles to keep the full-width version readable without clipping.
  - Standardized all three candidate rows on `panel-data`; B alone retains the orange oval annotation.

#### Fourth author pass

- Key findings:
  - Candidate B still differed through an explicit border and bold text; it must use exactly the same row styling as A and C, with only `.rn-circle-orange` added.
  - The left half of the wide SSE animation still contained excessive whitespace around a portrait-oriented coordinate system.
  - Residual diagnostics should begin with the marginal distribution of residuals before introducing residuals versus fitted values.
  - Further manual `<br>` spacing is reserved for the author and is not part of this batch.
- Revisions applied:
  - Removed the explicit border, result-panel background, and bold-row styling from B. All candidates now use the same `panel-data`, `card-compact`, and centered-column structure; only B adds `.rn-circle-orange`.
  - Changed the left animation coordinate ratio to fill its half of the slide and compensated the horizontal residual-square side by the same fixed ratio, preserving square shapes and area proportional to squared residual size.
  - Added a locally generated residual histogram as the first diagnostic slide; the following slide retains the residual-versus-fitted plot and its reading guidance.
  - Left the author's `<br>` spacing untouched.

#### Final author spacing and release pass

- Key findings:
  - The author completed the final manual `<br>` spacing pass and accepted the presentation content and flow.
  - A fresh render and whole-deck visual review were required before closing Phase 5.
- Revisions applied:
  - Preserved the author's final spacing choices without further slide-content edits.
  - Rendered the presentation successfully as a 47-slide HTML/PDF deck.
  - Inspected contact sheets for all 47 slides, with no remaining credible layout or teaching-flow defect found.
  - Promoted the recurring lessons from the review into the canonical presentation, active-learning, workflow, visual-rhythm, and vision-review guidance.

## Reusable presentation principles promoted

- Open with title → biological question / visual hook → learning outcomes; use a previous-lesson callback only after that and keep it strictly within previously taught material.
- Choose the first data view according to the reasoning task: show the whole dataset for a global-pattern question, or build progressively when accumulation itself is the concept.
- Introduce model quantities in ordinary words with explicit values and units before symbols or numerical substitution; stage the first `lm()` example from grammar to concrete arguments, fit, coefficients, and interpretation.
- Reuse a stable visual anchor while adding one layer at a time so students can see exactly what changed.
- Keep voting options visually identical; after commitment, identify the answer with one rough-notation annotation only, and keep every `Když nehlasujeme` fallback visible from the start.
- Treat whitespace as part of the composition. Preserve deliberate author-added `<br>` and judge figure size from the rendered footprint and internal whitespace, not `out-width` alone.
- Use animation only when motion exposes the concept: plausible candidate lines before the criterion, deliberately poor lines while demonstrating SSE, fixed axes/data, a concrete noticing prompt, and a static follow-up.
- For first residual diagnostics, begin with a familiar histogram, then explain the residual-versus-fitted axes and reference line, and add subgroup structure only afterward.

## Final validation checklist

- Learning outcomes still aligned: [x]
- Written and slide narratives are aligned: [x]
- Interaction fallback wording present: [x]
- Rendered outputs updated: [x]
- Release artefacts verified: [x]
- Borrowed source patterns were adapted rather than copied mechanically: [x]

## Release summary

- Version/tag target: Phase 5 release-ready state on `lesson/l03-presentation`; version/tag to be assigned by the release workflow.
- Main lesson changes: A 47-slide, question-led presentation with an L02 correlation callback, progressive visual construction of fitted values and residuals, animated SSE reasoning, and a staged first `lm()` fit.
- Known limitations: The render still reports the existing SCSS variable-order warning, remote Google Fonts 404 warning, and an R package built under a newer R version warning. The HTML/PDF outputs are nevertheless produced successfully; the GIF has a static follow-up comparison for PDF and accessibility fallback.

## Decision

- [x] Ready for release
- Notes: All five 2026-07-20 presentation review passes have been summarized and resolved. The author accepted the finalized deck after the manual spacing pass; the final 47-slide render and whole-deck visual inspection found no remaining credible defect.
