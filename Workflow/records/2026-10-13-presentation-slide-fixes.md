# L03 presentation: three slide fixes — story map

## Scope and approval record

- Artifact: `Presentation/presentation.qmd` only.
- Date: 2026-10-13.
- Branch: `fix/l03-presentation-slides`; base: `d18d23e` (`main`).
- Trigger: Ondřej Mottl's review of three slides, relayed as a handoff from the L10 session.
  1. "Jakou délku čekáte u květu širokého 2 cm?": the visualisation is the problem, and there is no answer or bridge.
  2. "Residuum vybraného květu": the formula is missing. Symbols are explained but never used in a formula.
  3. "Jaké koeficienty model odhadne?": the question refers to candidate lines A/B/C that are not on screen.
- Diagnosis verified against the source on 2026-10-13. Additional findings:
  - The deck uses $|e_i|$ and $e_i^2$ later, on "Jiná přímka, jiné vzdálenosti".
  - The skripta defines $\hat{y}_i = a + b \cdot x_i$ and $e_i = y_i - \hat{y}_i$.
  - There are no flowers with petal width 0,7–0,9 cm.
- Story-map status: complete. Heading-strip audit [x]. Knowledge-state audit [x].
- Human story-map approval: approved.
- Approver: Ondřej Mottl.
- Approval date: 2026-10-13.
- Decision and requested revisions: approved as proposed in the session, with the three adjustments (shared y-axis for the slice view, the $\hat{y}_i$ step made mandatory, the empty 0,8 cm band verified in code). No revisions requested.

## Story map (changed slides only)

| Order | Internal role | Heading level | Student-facing heading | Speaker note |
|---|---|---|---|---|
| 1a | Prediction commitment | H2 | Jakou délku čekáte u květu širokého 2 cm? | Full-width scatter with a dashed line at the scenario width. The "?" label sits above the data, not on points. One prompt: guess, then compare with a neighbour. |
| 1b | Evidence, answer, bridge | H2 | (same heading, repeat slide) | Left: the same scatter with flowers in the 1,9–2,1 cm band highlighted, no labels on the data. Right: a slice showing only those lengths as dots with their mean, on the same y-axis. Answer strip: about 5,6 cm; individual flowers 4,9–6,7 cm (inline). Bridge fragment: at 0,8 cm there are no similar flowers, so we need a rule for every width. Leads into "Co změříme a co čekáme?" and the model line. |
| 2a | Worked fitted value, then symbol | H2 | Odhadnutá délka vybraného květu | Add a fragment after the numeric calculation: $\hat{y}_i = a + b \cdot x_i$, with $x_i$, $\hat{y}_i$ and $i$ explained. |
| 2b | Worked residual, then symbol | H2 | Residuum vybraného květu | Add a fragment after the numeric calculation: $e_i = y_i - \hat{y}_i$, with $y_i$ and $e_i$ explained. Replaces the symbol-list strip. Words → numbers → symbols. |
| 3a | Prediction commitment with evidence | H2 | Jaké koeficienty model odhadne? | `kandidatni_primky.png` back on screen, plus a small intercept/slope table built from `kandidati`. Guess: will the fitted slope be closest to A, B or C? |
| 3b | Fit and reveal | H2 | (same heading, repeat slide) | `lm()` code, `coef()` output and coefficient table, plus a comparison line: the fitted slope (inline) is closest to candidate B (inline, computed from `kandidati`). |

Physical count: 56 → 58 (two repeat slides). H1 dividers are unchanged.

## Knowledge-state ledger (changed blocks)

| Block | May assume before | Introduced here | Must not assume yet | Evidence |
|---|---|---|---|---|
| 1a–1b | Scatter pattern, the new-flower scenario | A typical length among similar widths; spread at the same width; averaging fails where no similar flowers exist | Model line, prediktor/odezva (next slide) | Band highlight, slice, empty 0,8 cm band |
| 2a–2b | Worked fitted value and residual in words and numbers | Compact symbols $x_i$, $y_i$, $\hat{y}_i$, $e_i$, $i$ as shorthand for the quantities just computed | Symbols before their numeric meaning | The same flower, the same numbers on screen |
| 3a–3b | Candidate lines A/B/C, SSE choice of B on four flowers | Fitted coefficients from all flowers compared with the candidates | Fitted line equals B | Candidate figure and table, then `coef()` |

## Computational contract

- New objects are assigned on their first-use slide:
  - slide 1b: the slice plot and the 0,8 cm check (`stopifnot` that the band is empty);
  - slide 3a: the candidate table.
- `sirka_pasmo`, `data_pasmo_novy_kvet` and `delka_pasmo_prumer` stay on 1a/1b and are reused by the later payoff slide.
- No hard-coded data-derived values.

## Implementation and review (2026-10-13)

- Implemented as mapped. The deck is 58 slides. Changed slides: 11–12 (2 cm pair), 27–28 (symbols), 41–42 (coefficient pair). The payoff slide 45 still reuses `sirka_pasmo` and `delka_pasmo_prumer`.
- The coefficient objects (`odhad_interceptu_listky`, `odhad_sklonu_listky`) moved to slide 42, their new first use. The duplicate on "Přímka odhadnutá z těchto měření" was removed.
- Validation:
  - `POLLSLIVE_RENDER_MODE=offline Rscript R/render_presentation.R` succeeded. Synced mode is unavailable because the `_internal` sync workflow is disabled.
  - Changed slides were inspected as PDF rasters in their final fragment states. Fragments only add content.
  - Locality and inline-value checks passed.
- Independent review: a read-only subagent (Sonnet) applied `changes-reviewer.md` and `vision-corrector.md`. Result: 0 blocking and 5 should-fix findings, all resolved:
  - The rule phrase was given the model colour.
  - The 0,8 cm gap is marked with a dotted line in the figure.
  - The jitter is disclosed in the alt text and notes.
  - The Czech wording on slide 41 was fixed.
  - The prediction prompt on slide 11 became a strip with its unit.
- Optional finding applied: the SSE winner in the slide-41 note is computed instead of hard-coded.
- Human review: pending.

## Story-map amendment (2026-10-14)

- Requested by Ondřej Mottl after reviewing the PDF.
- Approved by Ondřej Mottl on 2026-10-14 (“I approve”), including the agreed wording.

| Order | Internal role | Heading level | Student-facing heading | Speaker note |
|---|---|---|---|---|
| A1 | Scenario built by fragments | H2 | Příští sezónu stihneme změřit jen šířku | Start: strip "letos obě měření; jeden řádek = jeden květ" plus a table of 4 measured flowers. Click 1: the full-data panel. Click 2: the table swaps to the 5-row version with the new flower, and the question panel appears. Students have not seen the data before this slide. |
| A2 | Symbol completeness | H2 | Residuum vybraného květu | The symbol line also explains $\hat{y}_i$. |
| A3 | New: shape named, assumption stated | H2 | Stejná residua, ale s křivkou | Same histogram plus a graphite normal reference curve (mean 0, residual SD, scaled to counts). Plain-words description first; then a fragment names **normální rozdělení**; then the takeaway "Lineární model předpokládá, že residua mají přibližně normální rozdělení. Proč na tom záleží, vysvětlíme v dalších lekcích." No explanation of why. |

- The physical count goes from 58 to 59.
- Ledger addition:
  - Earned on A3: normální rozdělení as a shape (symmetric, most values near the middle, fewer far away) and as a model assumption.
  - Not assumed: why the assumption matters (inference, L04+), and any formal tests.
- Follow-up outside this lesson: `slovnik` has no "normální rozdělení" glossary entry.

### Amendment implementation and review (2026-10-14)

- Implemented A1–A3. The deck is 59 slides; the new slide "Stejná residua, ale s křivkou" is slide 50.
- A1: the 4-row table carries a blank padding row, so the swap does not shift it vertically. A fixed table width clipped the text, so it was reverted; a few pixels of horizontal shift remain.
- The histogram bin width is defined once (`sirka_sloupce_rezidui`) on its first-use slide and reused for the curve scaling.
- Validation:
  - Offline-mode render succeeded.
  - Slide 9 was captured in all three click states with decktape `--fragments=true`.
  - Slides 28 and 50 were inspected.
- Independent review: a read-only subagent (Sonnet) reviewed the amended slides. Result: 0 blocking and 3 should-fix findings, all resolved:
  - The curve is now identified in the text.
  - "blízko nuly" is orange, to match the bars.
  - A Czech run-on sentence was split.
- Optional findings applied: "ukázka čtyř květů" in the strip, and one symbol per line on the residual slide.
- Human review: pending.
