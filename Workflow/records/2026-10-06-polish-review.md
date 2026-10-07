# L03 pre-teaching polishing review

## Findings and verdict

L03 has a sound biological story and covers its weekly outcomes. Keep the iris dataset, the candidate-line comparisons, the one-flower fitted-value/residual sequence, and the species reveal. The numerical checks pass. The presentation needs a substantive polishing pass to match the teaching clarity of the current L01 and L02; the written materials need a more targeted narrative, inspection, notation and glossary pass.

The most consequential teaching repairs are the answer giveaway on presentation slide 40, the missing graph on the diagnostic discussion slide 46, the undefined residual symbols, and the weak connection between the four-flower SSE demonstration and its source observations. Required workflow repairs are complete, separately approved story maps and ledgers for both artifacts before substantive rewriting, plus slide-local object preparation.

Severity distinguishes HIGH teaching problems and explicitly mandated compliance failures from MEDIUM improvements. A copied sample-size literal is a small repair even though it violates a mandatory numerical-provenance rule. Historical human approvals are preserved; this audit does not revoke them.

## Scope and evidence

- Requested by Ondřej Mottl on 2026-10-06: prepare a new L03 branch and fully review learning materials and presentation against instructions and the style of L01 and polished L02.
- Created and checked out `polish/l03-before-teaching` from clean local `main`, commit `dedf899` (`Record L03-v0.6.1 release (#13)`). Local `main` and the locally recorded `origin/main` had zero divergence. No remote refresh was performed.
- L01 reference: clean `main`, `348e384`; L02 reference: clean `polish/l02-before-teaching`, `50b0387`, including the completed 2026-10-06 revisions. Compare these actual local artifacts, not the earlier 72-slide L02 snapshot.
- Full target sources: [learning materials](../../Learning_materials/skripta.qmd), 1,955 lines; [presentation](../../Presentation/presentation.qmd), 2,101 lines. Supporting evidence includes the sibling artifact, weekly outline, scope/dataset decisions, historical workflow records and approved amendments.
- Two separate read-only internal reviewers applied [vision-corrector.md](../../../_internal/.ai/agents/vision-corrector.md): `review_learning` and `review_presentation`. The learning reviewer also performed glossary coverage. Both read the complete matching L01/L02 source artifacts and inspected all existing L03 PDF pages through contact sheets.
- The authoring assistant checked the numerical/source evidence and all 52 existing presentation PDF pages and 42 learning-material PDF pages, with full-size checks of presentation pages 27, 28, 31, 40, 45 and 46 and written pages 14, 16, 30 and 37.
- No teaching source or rendered teaching output was changed during this review. This record is the deliverable, with a Stage Log entry recording the audit.

## Applicable instructions

The review applied the canonical routing in `_internal/AGENTS.md`; core behaviour, workspace structure, course context, Git workflow, planning, editing safety and review checklist; Quarto, lesson workflow, student-facing language, presentation, visual rhythm, active learning, student-facing R, hidden R, datasets, glossary, terminology and PollsLive guidance; and the independent vision/glossary review prompts. The current weekly scope comes from `_internal/osnova_lekci.md`, not the outdated weekly mapping in the broad learning-outcomes document. `_brand` owns shared visual sources and `slovnik` owns terminology. The PDF skill was used to inspect existing rendered outputs.

## Presentation findings

Slide numbers refer to the existing 52-slide offline export, including the retrieval block. Source references below are to `Presentation/presentation.qmd`.

### P1 — HIGH: the slope question gives away its answer

**Evidence:** slide 40, lines 1702–1743. The always-visible prompt says “Bez hlasování: přepište B vlastními slovy”, identifying the correct option before commitment. Options also use different semantic panels, with B in a result panel. Unequal option treatments recur on slides 11 and 25 (lines 309–316 and 939–951).

**Rule:** `active-learning.md`, progressive disclosure; `presentation-visual-rhythm.md`, Voting Cards.

**Repair:** equal option cards; a neutral selection-and-partner-defence prompt; answer and explanation revealed after commitment. Adapt the current L01/L02 pattern. Live roughnotation timing was not inspected, so no separate claim is made about when its annotation appears.

### P2 — HIGH: the main diagnostic task omits its evidence

**Evidence:** slide 46, lines 1906–1919. Students must inspect “the graph” for 30 seconds, but the slide contains only the question and discussion instructions. The graph is on slide 45. This was confirmed at full size in the PDF.

**Rule:** `active-learning.md`, Make interaction tasks self-contained.

**Repair:** repeat the residual plot on the discussion slide beside the prompt, keeping it visible throughout the pair discussion; reveal species structure afterward.

### P3 — HIGH: compact residual symbols lack definitions

**Evidence:** slide 28, line 1101 introduces `e_i = y_i - hat(y_i)` without explaining each symbol or the index; slide 31 reuses these symbols in the SSE animation (lines 1325 and 1408).

**Rule:** `quarto.md`, Introducing quantities and formulas; `presentation.md`, Meaning and values before symbols.

**Repair:** retain contextual words or explicitly identify measured length, fitted length, residual and flower index before compact notation. L01's defined-symbol list is a useful pattern. The concrete numeric residual example itself is correct.

### P4 — HIGH compliance: lesson objects are prepared far before first use

**Evidence:** setup lines 61–131; future-plot batch lines 736–871; residual-plot preparation lines 1836–1868.

| Object family | Current assignment | First teaching use |
|---|---|---|
| Iris table | Setup, lines 63–68 | Full-data plot, slide 12 |
| Fitted model and residual data | Setup, lines 70–87 | Fitted coefficients/model passage; residual diagnostics |
| Four flowers and illustrative parameters | Setup, lines 89–108 | One-flower and SSE sequences |
| Candidate parameters and SSE | Setup, lines 110–131 | Slides 16 and 32 |
| Measurement/fitted/residual figure variants | Slide 21, lines 768–871 | Slides 22–24 and 27–28 |
| Residual scatterplot | Slide 44, lines 1836–1868 | Slide 45 |

**Rule:** `presentation.md`, Keep slide-local code and objects on the slide that first uses them; `quarto.md`, locality of lesson objects.

**Repair:** keep setup for infrastructure, place each object on its first-use slide, and split the multi-figure preparation batch. Reuse already introduced objects where the dependency is clear. This is a source-organization requirement, not evidence that the current calculated results are wrong.

### P5 — MEDIUM: students cannot trace the four-flower SSE demonstration

**Evidence:** slides 21–32, especially lines 736–737 and 1173–1483. One flower becomes four numbered flowers in the animation and then a candidate SSE table, without a visible table of those four measurements.

**Rule:** `lesson-workflow.md`, connect calculations with their source observations; `presentation.md`, Meaning and values before symbols.

**Repair:** show the four observed width/length pairs, identify the illustrative candidate B, and reuse exactly those rows in the residual and SSE calculation. Distinguish the four-flower demonstration from fitting all flowers. Adapt L02's precise table-to-calculation continuity without copying its entire two → four → all opening.

### P6 — MEDIUM: the fitted result needs its fitted graph

**Evidence:** slides 39–43, lines 1642–1802. Coefficients and biological interpretations appear after candidate-line plots; the actual fitted whole-data line appears only on slide 47, simultaneously with species colouring.

**Rule:** `presentation.md`, data → result → interpretation; `lesson-workflow.md`, visual-first presentation aligned with the written backbone.

**Repair:** show the actual fitted line over the familiar uncoloured iris data near the coefficient result. Clarify that candidate B is illustrative, whereas `lm()` estimates the model. The learning materials already provide this graph at lines 1044–1105.

### P7 — MEDIUM: section navigation is absent

**Evidence:** no H1 section dividers anywhere in the complete source. L01 and L02 visibly divide their main teaching routes.

**Rule:** `presentation.md`, Slide and section breaks.

**Repair:** plan about four major divisions around the question/line, residuals and fitting criterion, fitting in R, and model checking. Give each divider a map row and count it in the revised deck. Avoid naming unfamiliar terms before their motivating example.

### P8 — MEDIUM: the interaction voice exposes presenter mechanics

**Evidence:** “Když nehlasujeme” or similar at lines 325, 413, 578, 961, 1491 and 1739; “Dnes se zeptáme” at 241; process panel titles at 976, 990 and 1027; headings including “Dosadíme názvy z naší otázky”, “Fitujeme první model” and “Vracíme se k biologické otázce”.

**Rule:** `student-facing-language.md`, frontstage/backstage separation; `active-learning.md`, direct prompts.

**Repair:** retain the intellectual tasks but phrase them directly; move modality/click/transition cues to notes. Use headings naming the actual measurement, contrast or question. The sign task already contains “naměřená − odhadnutá” in its visible fallback at line 961, so it is not wholly missing its subtraction convention; make that convention prominent and unconditional, and distinguish signed residuals from drawn segment lengths.

### P9 — HIGH compliance, small repair: copied calculated values

**Evidence:** fitted slope literal `2,23` at line 1774 and dataset-count literals `150` at lines 200, 332 and 1616. Other slope uses already come from the model.

**Rule:** `quarto.md`, No Hardcoded Data-Derived Values; `presentation.md`, Computed values on slides.

**Repair:** derive the coefficient and counts from the generating objects. Use Czech decimal formatting consistently in prose, equations and presentation tables; preserve normal R syntax/output. Numerical agreement today does not replace provenance.

### P10 — MEDIUM: animation and visual infrastructure need alignment

**Evidence:** the SSE GIF on slide 31 (lines 1391–1415) is followed by a table, not a static same-data diagram. Setup uses copied colour hex values (54–59); figures repeatedly use `theme_minimal()` without sourcing the shared R theme. Zero-residual reference colour changes between uncoloured and species-coloured views (1847 versus 2005). The species palette (1933–1937) is reused but has no recorded exception.

**Rule:** `presentation.md`, Animated GIFs and Visual System; `presentation-visual-rhythm.md`, semantic colour consistency; `_brand` canonical ownership.

**Repair:** add a static SSE visual continuation; use `R/set_r_theme.R`, `theme_biostat()` and named `biostat_cols`; keep the zero-reference cue consistent; document an accessible categorical-palette exception if retained. Label candidate lines directly and avoid implying that orange comparison lines have the same role as orange residuals. Evaluate the local quiz sizing CSS against current shared components before migrating it; do not edit generated assets or canonical styles merely for cosmetic uniformity.

### P11 — MEDIUM: rebalance the calculation block and distil the current diagnostic guidance

**Evidence:** calculation slides 26–30 repeat panel-led compositions. Full-size pages 27–28 show small plot labels beside broad equation panels; page 45 is legible and should not be classified as clipped or unreadable. The written materials' current core assumption/pattern guide (1290–1450) is more developed than the older deck's cloud-versus-pattern treatment.

**Rule:** `presentation-visual-rhythm.md`, component fatigue, hierarchy and composition; `lesson-workflow.md`, derive slides from revised written materials.

**Repair:** make the flower evidence larger, use a plain equation or figure where it improves rhythm, and consider one concise residual-pattern recognition task aligned with the core notes. Preserve purposeful whitespace. Q–Q, leverage and Cook's distance remain optional written Extras; they need not be promoted into the lecture.

## Learning-material findings

Source references are to `Learning_materials/skripta.qmd`.

### L1 — MEDIUM: the change from association to directional modelling is under-explained

**Evidence:** L03 assigns response/predictor roles around lines 137–143 and 198–203 but does not explicitly explain why those roles cease to be interchangeable. Polished L02 explains interchangeable axes for association at line 387 and defers directional roles. L02's ending at line 2438 also anticipates a penguin effect in grams per millimetre, whereas L03 changes dataset.

**Rule:** `student-facing-language.md`, chronological knowledge; `lesson-workflow.md`, coherent data story and cross-lesson transfer.

**Repair:** explain the move from describing association to estimating length from width, and that reversing the roles asks a different question. A short transfer bridge can acknowledge the new flower dataset and relate the familiar penguin question to the same model idea. Keep iris: its documented dataset decision makes the intercept visible near zero. No L02 edit or dataset replacement is implied by this review.

### L2 — MEDIUM: basic dataset inspection is hidden inside optional preparation

**Evidence:** lines 154–203. Preparation and `summary(data_kosatce)` are inside a collapsed Extra; there is no explicit missingness check or structure/type display in the core route. Variable summaries and marginal plots follow, so this is not a total absence of inspection.

**Rule:** `lesson-workflow.md`, Recurring analysis habits; `datasets.md`.

**Repair:** keep optional acquisition details foldable but make the observational unit, a small table, types, missingness and plausible ranges part of the core route. Adapt L01/L02's explicit first inspection. Show the actual result that these iris variables have no missing values rather than assuming it.

### L3 — MEDIUM: formula explanation and units need a focused completion pass

**Evidence:** the SSE calculation at lines 830–838 puts expansion and intermediate sums in one long display instead of the required aligned steps. The source table at 798–813 omits units; SSE units are not explained at 787–846. The final slope expression `b = Delta hat(y) / Delta x` at 984–986 is followed directly by the next section, without explaining each new symbol or change operator.

**Rule:** `quarto.md`, Equation Pedagogy Pattern and Introducing quantities and formulas.

**Repair:** retain the existing text-only → concrete → intermediate → general progression; it is already present. Align the multi-term numeric SSE stages, label width/length/residual in cm and SSE in cm², state slope units cm/cm, and explain Delta, fitted length and width immediately after the compact slope expression. Audit the residual/model tables for the same unit clarity.

### L4 — MEDIUM: authoring language interrupts the self-study narrative

**Evidence:** headings at 207, 1158, 1815 and 1858; stage narration around 672, 686, 710, 773, 840, 902, 913, 931 and 968. Examples include “Nejprve vztah zapíšeme”, “Teprve potom dosadíme”, “Teprve teď ... zavedeme obecné symboly”, “Nejprve obarvíme” and “Potom obarvíme”.

**Rule:** `student-facing-language.md`, headings describe content, not workflow.

**Repair:** preserve the conceptual sequence but write headings and transitions about the flower, quantity, comparison or conclusion. Polished L02 already demonstrates this editorial pass. Do not mechanically remove every ordinary sequencing word from otherwise useful written instructions.

### L5 — MEDIUM: several figures need student noticing or interpretation tasks

**Evidence:** the marginal and scatterplot passages at 207–334, parameter comparisons at 398–580, and the species/residual reveal at 1811–1905 mostly explain what is shown instead of consistently asking the reader to interpret first. The final summary has no equivalent of L01/L02's ending transfer question.

**Rule:** `lesson-workflow.md`, interpretation prompts and self-contained backbone; `active-learning.md`, observation before answer.

**Repair:** add a few selected noticing questions, a model-output interpretation choice and a closing biological question, with delayed or collapsed answers. Keep the detailed explanations; the written notes should not become a thin copy of the slides.

### L6 — HIGH compliance, small repair: copied row count and repeated illustrative inputs

**Evidence:** literal “150 květů” at line 156; candidate parameters recreated in multiple blocks (344–396, 856–871); illustrative `a0`/`b0` values repeated in hidden and visible examples.

**Rule:** `quarto.md`, numerical provenance and a single named repeated teaching scenario; `student-facing-r.md`, locally reproducible visible code.

**Repair:** derive counts from the data and create one named internal candidate/scenario object, using it for figures, computed tables and inline values. Keep explicit teaching constants in visible code when needed for reproducibility, with a hidden consistency guard rather than making students depend on private objects. Candidate A/C slopes differ between the notes and slides and the SSE tables use different sample sizes; either align them or clearly label the different comparisons.

### L7 — MEDIUM: targeted glossary and code-style cleanup remains

**Evidence:** real glossary calls resolve to existing local slugs, but the first-occurrence-per-H2 rule needs another targeted pass, including the fitted-value/model-notation passage and first statistical terms in headings or diagnostic explanations. Source conventions also drift in unnamed function arguments, unnecessary preloaded-package prefixes, type prefixes such as `data4`/`tab_pred`, copied brand colours and the custom glossary CSS/JavaScript at lines 106–125.

**Rule:** `glossary.md`; `terminology.md`; `student-facing-r.md`; `r-coding.md`; `quarto.md`.

**Repair:** apply only verified first-use glossary links, keep technical code plain, and preserve optional-code labels. Group small code-style changes with the passage being polished. Avoid a broad mechanical rewrite of working beginner code. All currently executable visible code passes; these are convention and self-study clarity issues, not runtime failures.

The independent glossary pass identified these concrete locations. Recheck first-use positions after any prose revision; do not nest wrappers or repeat them for every H3/Extra.

| Line | First or earlier occurrence | Existing slug |
|---|---|---|
| 165 | bodového grafu | `bodovy-graf` |
| 213–214 | numerické proměnné / proměnná | `numericka-promenna`, `promenna` |
| 285 | bodový graf in the new H2 heading | `bodovy-graf` |
| 339 | sklon přímky | `sklon` |
| 413 | Intercept in the new H2 tab section | `intercept` |
| 494 | Sklon in the new H2 tab section | `sklon` |
| 1013 | parametry modelu | `parametry-modelu` |
| 1044 | Odhadnuté délky | `odhadnuta-hodnota` |
| 1193 | odhadnutou délku | `odhadnuta-hodnota` |
| 1401 | rozdělení | `rozdeleni` |
| 1536 | směrodatných odchylkách | `smerodatna-odchylka` |
| 1655 | Cookova vzdálenost precedes its current wrapper at 1660 | `cookova-vzdalenost` |
| 1933 | intercept in the summary | `intercept` |

### L8 — MEDIUM: the closing boundary undercuts an earned diagnostic skill

**Evidence:** outcome line 152 requires graphical recognition of possible model problems, and the core assumption map at 1294–1397 explains curvature, changing spread and ordered patterns. The ending at line 1918 then says “Tyto pojmy teď nemusíte umět diagnostikovat ani řešit.” This is broader than the intended deferral of formal diagnosis and remedies.

**Rule:** weekly outcomes drive the lesson; `student-facing-language.md`, chronological knowledge contract; approved assumption-map scope.

**Repair:** retain graphical recognition and description as an earned core skill, while deferring formal tests, advanced methods and remedies. Explain that the technical names are supplementary search vocabulary rather than withdrawing the ability students just practised.

## Workflow finding for both artifacts

**HIGH compliance:** original Stage 2 and Stage 4 records do not contain complete current whole-artifact story maps with the required columns and checked knowledge-state ledgers. The presentation's July record is a four-block storyboard; the September presentation amendment covers one illustration. Later learning-material amendments have approved maps, including the 2026-10-04 diagnostic Extras, but do not supply the missing whole-artifact map.

Prepare one complete map/ledger for the learning materials and a separate one for the presentation, incorporating retained content and proposed changes. The instruction is explicit: [AGENTS.md](../../../_internal/AGENTS.md), “complete the matching story map and knowledge-state ledger first, then stop and obtain explicit human approval before drafting full student-facing prose or full slide copy.” Record separate approver/date/decision/revisions for each. This review and the user's authorization to create a branch do not substitute for those approvals.

## Cross-lesson style decisions

| Decision | Pattern | Application to L03 |
|---|---|---|
| Retain | One coherent iris story | Appropriate for first numerical-predictor model and near-zero intercept explanation; keep the documented choice. |
| Retain | Whole-data opening | The global relationship is the first question; do not force L02's small-point opening sequence. |
| Retain | Manipulate intercept and slope separately | Strong visual distinction before fitting. |
| Retain | One-flower build across repeated plots | A useful L03 pattern worth carrying forward to later lessons. |
| Retain | Species revealed in residuals | Earned diagnostic payoff, rather than arbitrary colouring. |
| Retain | Explicit model limits and optional diagnostics | Keep the core/Extra boundary and approved Q–Q/leverage/Cook additions. |
| Adapt | L01's concrete values and defined symbols | Repair residual notation and units; maintain the existing complete equation progression in the notes. |
| Adapt | L02's same-source tables and calculations | Make the four-flower SSE evidence explicit and distinguish the fitted model from chosen candidates. |
| Adapt | L01/L02's neutral MCQ cards and commitment before reveal | Repair slope question and option semantics. |
| Adapt | L02's evidence on task slides | Keep the residual graph on the diagnostic discussion. |
| Adapt | L01/L02's content headings, H1 dividers and deliberate visual rhythm | Apply to major sections without copying the lessons' subject-specific structures. |
| Adapt | Shared R theme and stable visual semantics | Repair hardcoded branding and document any categorical palette exception. |
| Adapt, optional | Illustrated title screen | Can strengthen visual series continuity, but the present question-first L03 title is not a defect merely because it lacks a cutout illustration. |
| Omit with reason | L01 onboarding, lecturer biography and assessment orientation | First-week purpose; unnecessary repetition in L03. |
| Omit with reason | L02 graph gallery and covariance/correlation derivations | Already taught; preserve space for modelling and diagnostics. |
| Omit with reason | Remaining benchmark exceptions to current rules | Approval or recency does not make every L01/L02 source choice an automatic standard. |
| Omit with reason | Promotion of optional diagnostic Extras into core slides | Advanced tools are explicitly optional; use the core assumption/pattern guide selectively. |

## Validation and limits

| Check | Result |
|---|---|
| UTF-8/BOM/replacement characters | Both QMD sources decode as UTF-8, have no BOM and no U+FFFD. |
| Chunk labels | No duplicate labels in either source. |
| R parsing | All 50 learning-material and 40 presentation R chunks parse in clean `Rscript --vanilla` sessions. |
| Executable visible code | Both extracted visible-code routes execute from clean sessions without hidden setup objects; includes the written optional ggplot2/Q–Q/leverage/Cook examples. |
| Model results | Intercept 1.083558; slope 2.229940; illustrative B residuals −0.14, 0, −0.26, −0.60; Cook orientation threshold identifies 11 virginica; sensitivity slope 2.248904. These agree with the current teaching examples. |
| Local glossary slugs | No invalid rendered term slug found. The literal example `slug` in a source comment is not a glossary call in student content. |
| PollsLive | `node pollslive/validate.mjs` passes without credentials. Current opening placement and retrieval concepts fit polished L02. |
| Existing PDF inspection | All 52 slide and 42 note pages inspected in overviews; selected high-risk pages checked at full size. No obvious gross clipping or visible Czech encoding corruption. |
| Fresh render | Not run in this review. Existing slide PDF is dated 2026-09-18; the cached presentation components changed in October. Existing note PDF is dated 2026-10-05. These are historical output inspections, not fresh render acceptance. |
| R warnings | Harness runs emit Windows locale/temporary graphics encoding warnings; both routes finish successfully. The existing PDFs display Czech text correctly. This check does not validate a future render's font/layout behaviour. |
| HTML/fragment/live operational checks | Not performed. Initial/intermediate fragment states, live result embeds, QR behaviour, live poll state and synchronization remain unverified. No responses submitted and no poll operation performed. |
| Accessibility | Only one explicit `fig-alt` in the presentation and two in the written QMD. Add figure-specific alternative descriptions during the polish; generated quiz evidence already has its own metadata. |
| External references/provenance | Existing source attributions inspected locally; external URLs and licensing claims were not independently refreshed in this review. |

The review does not certify every slide at full-size in every fragment state, a new release, or current public deployment. Normal canonical render wrappers synchronize shared branding and prepare presentation variants; use them during the implementation validation rather than overwriting generated descendants manually.

## Suggested order for the next polishing work

1. Complete the learning-material story map and ledger; obtain its explicit approval. Preserve the biological story and approved Extras.
2. Revise the written directionality bridge, core inspection, notation/units, contextual wording and selected interpretation tasks. Repeat glossary and separate full-artifact review, render HTML/PDF and inspect the changed pages before human review.
3. Complete and separately approve the presentation map derived from the revised written backbone, including H1 dividers, four-flower evidence, fitted-line result and diagnostic task.
4. Polish the presentation, repair object locality and visual semantics, add the static SSE continuation and figure alt text. Independently review the full artifact and rendered composition, including initial/intermediate/final fragments, before human acceptance.

No implementation, staging, commit, push, release, deployment or PollsLive activation is recorded as completed by this review.
