# L03 learning-material polishing story map

## Scope and approval record

- Artifact: complete `Learning_materials/skripta.qmd`, including retained optional material.
- Date: 2026-10-06.
- Branch: `polish/l03-before-teaching`; base: `dedf899`.
- Requested work: resolve findings L1–L8 and the shared workflow/accessibility findings in `2026-10-06-polish-review.md`.
- Story-map status: complete.
- Heading-strip audit completed: [x].
- Knowledge-state audit completed: [x].
- Human story-map approval: approved.
- Approver: Ondřej Mottl.
- Approval date: 2026-10-06.
- Decision and requested revisions: explicit user decision “approve both” approves this learning-material map and its ledger; no revisions requested.
- Preserve the approved iris dataset, complete teaching sections, concrete four-stage formula explanations and diagnostic Extras. This is a polishing pass on the existing lesson, not creation of a new stage sequence.

## Complete story map

The rows describe every major concept block. Plotting tabs are alternative representations within their parent block; their labels remain short and factual. Headings below are planned student-facing headings, not full prose. Internal roles and speaker notes stay in this record.

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Biological opening and transfer from association | Jakou délku korunního lístku odhadneme z jeho šířky? | Connect the familiar penguin association to a new organism. Explain why estimating one measurement from another assigns directional roles. Retain the formal method title as the subtitle. |
| 2 | Learning contract | Výsledky učení | Keep the current outcomes: choose response/predictor, fit and interpret a numerical-predictor model, explain residuals and recognise graphical warning patterns. |
| 3 | Published measurements and core inspection | Každý květ má dvě měření | One row is one flower; show a representative table, units, types, missingness and ranges in the core route. Derive row/group counts. Acquisition/renaming details remain optional. |
| 4 | Optional reproducible data preparation | Doplňující: odkud data pocházejí a jak je připravit | Retain provenance and base-R preparation, explain the delivered CSV versus the built-in source without requiring extra packages. Reuse the course's existing acquisition pattern. |
| 5 | Marginal scale and variability | Šířka korunních lístků | Retain summary and distribution figure. Ask what widths are plausible before explaining the observed range. |
| 6 | Second marginal scale and variability | Délka korunních lístků | Retain summary and distribution figure. Relate units and biological scatter to the previous block. |
| 7 | Paired evidence and reading commitment | Jak spolu souvisejí šířka a délka? | Retain the scatterplot and code alternatives, base R first. Ask about direction, shape and scatter before the explanatory answer. |
| 8 | Need for a line-selection rule | Která přímka vystihuje měření? | Preserve all candidate-line evidence; use one named candidate definition shared with the presentation. The need for a distance criterion comes before the word residuum. |
| 9 | Parameter observation | Co se změní, když přímku posuneme? | Retain the intercept figure with zero visible. Ask what changes and what remains fixed, then explain intercept, units and the small extrapolation to zero. |
| 10 | Parameter observation and synthesis | Co se změní, když přímku nakloníme? | Retain slope figure and combined intercept/slope examples. Ask which change is a shift and which a tilt. Define slope in original units. |
| 11 | Small observed subset | Čtyři květy a jedna zvolená přímka | Preserve the observed rows and explicit candidate B. Show the table in the core route; selection mechanics remain an Extra. This chosen line is not yet the fitted model. |
| 12 | Fitted value and signed difference | Jaký rozdíl zůstane u jednoho květu? | Preserve the figure and full word-equation, substitution, intermediate-value progression. Ask overestimate/underestimate before the explanation. Distinguish signed residual from segment length. |
| 13 | Repeat the same operation and introduce notation | Naměřená délka, odhad a residuum čtyř květů | Retain the four-row table and runnable code; add units. Only after the concrete results define every general symbol and the observation index. |
| 14 | Aggregate fitting criterion | Jak porovnat vzdálenosti všech květů od přímky? | Motivate squares, name SSE, show text-only relationship, expanded numbers, aligned intermediate contributions and the total, then general symbols. State cm² and compare candidates on an explicitly labelled common sample. |
| 15 | Model decomposition | Naměřená délka se skládá z odhadu a residua | Preserve the worked first-flower reconstruction, then general model notation and immediate explanations of every symbol. Avoid narrating authoring stages. |
| 16 | Slope as a change ratio | O kolik se změní odhadnutá délka? | Preserve the two points on the same chosen line and full calculation. Explain Delta and both quantities immediately after the compact formula; slope units are cm per cm. |
| 17 | Transparent software application | Přímka pro délku korunního lístku v R | Retain generic `lm()` grammar, concrete call and original `coef()` output. A coefficient interpretation task precedes its answer. The model fit belongs next to this passage, not in setup. |
| 18 | Result and biological reading | Přímka odhadnutá ze všech květů | Retain fitted values and fitted graph, public plotting functions and optional alternatives. Distinguish the estimated model from candidate B and reconnect to the opening question. |
| 19 | Obtain and read signed residuals | Co zůstává mezi měřením a odhadem? | Retain `resid()` and a clearly explained first-values check. Signs remain consistent with measured minus fitted. |
| 20 | Familiar one-variable view | Jak jsou residua rozdělená? | Retain the histogram and noticing question. Explain what it reveals and what it cannot locate along the predictor/fitted-value range. |
| 21 | Conditional pattern view | Mění se residua podél odhadnuté délky? | Retain the paired fitted-value/residual table and base-R-first plotting alternatives. Evidence stays beside an interpretation question. |
| 22 | Core model conditions and graphical recognition | Co musí být rozumné, aby přímka odpovídala na otázku? | Retain the four-question assumption map and schematic pattern guide. Students describe curvature, changing spread and ordered patterns; independence is checked from observation provenance, not certified by a scatterplot. |
| 23 | Response versus model departures | Odezva a residua mohou mít jiný tvar | Retain the side-by-side comparison and optional explanation about normality. Shapes do not automatically approve/reject the model; exact normality and formal tests are not core requirements. |
| 24 | Optional shape diagnostic | Doplňující: Q–Q graf residuí | Preserve the separately approved October Extra and both plotting approaches. Explain quantiles, axes and reference line before reading tails. No formal normality test or new core requirement. |
| 25 | Optional unusual-position distinction | Doplňující: odlehlý, krajní a vlivný bod | Preserve the existing distinction between departure size, predictor position and influence. A point is not deleted just because it attracts attention. |
| 26 | Optional predictor-position diagnostic | Doplňující: pákový efekt | Preserve the approved leverage Extra and both plotting approaches. The predictor position determines leverage; no hat-matrix algebra or standardised residuals. |
| 27 | Optional influence diagnostic and sensitivity | Doplňující: Cookova vzdálenost | Preserve the approved Extra, orientation-only 4/n line, species check and sensitivity refit. No automatic deletion or formal test. |
| 28 | Earned species reveal | Které druhy model nadhodnocuje a podhodnocuje? | Retain both the original-data and residual-coloured figures with stable species colours. Ask about the visible pattern before interpreting it. Keep species as a diagnostic clue; do not fit a second predictor. |
| 29 | Bounded scope and future uncertainty | Co přímka popisuje a co zůstává otevřené? | Retain model limits and the next-lesson uncertainty bridge. Explicitly preserve the graphical recognition skill just earned; defer formal tests and remedies. |
| 30 | Earned recap | Shrnutí | Preserve the summary of the core outcomes and the fitting principle. Optional diagnostics are not core requirements. |
| 31 | Transfer commitment | Co zkontrolujete před biologickým závěrem? | Add a short closing reasoning question with its collapsed answer, grounded in a visible model/graph. No need for an additional dataset or new method. |
| 32 | Term reference | Slovníček pojmů | Retain HTML glossary and explicit PDF online fallback. Complete verified first-use links per H2 section after prose revisions. |

## Chronological knowledge-state ledger

| Block / rows | May assume before | Introduced or earned here | Must not assume yet | Visible evidence / experience |
|---|---|---|---|---|
| Opening / 1–2 | L01 units, summaries and observations; L02 paired plots and descriptive association | A directional estimation question; response versus predictor | Causal identification, fitted coefficients, uncertainty calculation | Known penguin question transferred to flower measurements; one measurement is estimated from the other |
| Dataset / 3–4 | Rows, columns, simple base R | One flower per row; types, counts, missingness, units, ranges and reproducible source | Hidden preparation as a student prerequisite; independence certified by graphics | Core inspection table and executable checks; provenance Extra |
| Marginals / 5–6 | L01 summaries and distribution plots; introduced iris columns | Plausible scales and scatter in each measurement | A marginal distribution explains the relationship | Separate summaries and marginal figures with noticing prompts |
| Pair / 7 | Paired observations and both measurement scales | Direction, shape and scatter of the iris relationship | One exact value for every flower, causation | Scatterplot and local reading task |
| Candidates / 8 | Growing association and graphical line | Need for a principled comparison rather than visual preference | Residuum/SSE terminology before explanation; optimal fitted coefficients | Multiple lines over the same observed cloud |
| Shift / 9 | Candidate lines | Intercept as line height at zero; small extrapolation limitation | An actual flower at zero width | Shifted lines with x = 0 visible |
| Tilt / 10 | Intercept and two axes in cm | Slope as change in fitted length per change in width; shifts versus tilts | Inference or slope as variance explained | Tilted lines, stable intercept, combined parameter panels |
| Subset / 11 | Candidate parameters | Four real observations and an explicitly chosen line | The illustrative line equals the least-squares fit | Four-row measurement table and matching line |
| One flower / 12 | Width, length and chosen line | Fitted length; signed measured-minus-fitted difference | General symbols before quantities are clear | Labelled point, line and segment; full concrete calculation |
| Four flowers / 13 | One-flower operation | Repeated fitted values and residuals; meanings of x_i, y_i, fitted y_i, e_i and i | Unexplained algebra or hidden code objects | Same four-row table with cm units and short visible R |
| SSE / 14 | Signed residuals | Squares do not cancel; squared units; SSE; sum notation; same-sample comparisons | SSE is an uncertainty estimate, a test or a cross-sample score | Intermediate table and aligned concrete calculation before abstract notation |
| Decomposition / 15 | Measured/fitted/residual quantities and symbols | Measurement = fitted length + residual for the current example and in general | Error term equals fitted residual in all future statistical theory | Numeric reconstruction tied to the first flower |
| Slope ratio / 16 | Two points on the same line | Change operator and ratio in cm/cm | Slope from arbitrary pairs of noisy observations | Two-point table and word → numeric → compact expression |
| lm / 17 | Chosen parameters, SSE and current columns | `lm()` estimates coefficients by the same criterion; `coef()` is interpretable output | Package-specific hidden helpers or unexplained generic placeholders | Grammar, concrete call and original output with interpretation task |
| Fitted result / 18 | Estimated coefficients | Fitted line/fitted values in the same dataset; an average descriptive change | Exact changes for each flower, causal mechanism | Uncoloured full-data fitted graph and contextual reading |
| Residual extraction / 19 | Signed residual definition | `resid()` returns one departure per modelled flower | Absence of residuals is the goal | First measured/fitted/residual values |
| Histogram / 20 | L01 histogram and signed residuals | Shape and centre of the collection of departures | A histogram identifies where a model misses along x | Residual histogram, local question and answer |
| Residual pattern / 21 | Fitted values and departures | Pattern location around zero; over-/underestimation | Formal diagnostics or automatic model acceptance | Fitted-value/residual plot with the evidence retained on the task |
| Conditions / 22 | Residual graph reading | Graphical warning patterns; design/provenance matters for independence | Formal tests, fixes or a graph proving independence | Four schematic cases and explicit biological/design questions |
| Shapes / 23 | Response versus residual distinction | Their distribution shapes may differ; normality concerns model departures for later inference | Outcome must be normally distributed; exact normality needed for fitting | Paired histograms and bounded optional explanation |
| Optional Q–Q / 24 | L01 quartiles/percentiles; histogram; residuals | Quantile comparison and tail/asymmetry reading | A pass/fail normality test or mandatory core tool | Approved base-R and ggplot2 graphs with axes and line explained |
| Optional unusual points / 25 | Residual size and predictor positions | Large departure, extreme position and influence are different ideas | All unusual points are influential or must be excluded | Existing explicit point distinctions |
| Optional leverage / 26 | Predictor position, fitted values and optional point distinctions | Leverage follows distance from the mean predictor; no units | Hat-matrix algebra, threshold as test or leverage determined by response | Existing leverage/residual figures and range check |
| Optional Cook / 27 | Residual size, leverage and model coefficients | Combined influence diagnostic and sensitivity refit | Automatic exclusion or 4/n as a hypothesis test | Existing orientation line, table, species check and coefficient comparison |
| Species / 28 | Uncoloured data and residual patterns; optional diagnostics are skippable | Species structure remains outside a width-only model | Adjusted effects or a fitted category model | Same observations with one new colour layer; task before interpretation |
| Boundaries / 29 | Core graphical recognition and descriptive coefficients | What is earned versus future inference/remedies | Formal significance, confidence intervals, multiple predictors | Explicit model limits and a bounded uncertainty question |
| Summary / 30 | All core outcomes; optional boxes not required | Recall of the earned model/checking skills | Success requires the optional advanced route | Core summary |
| Transfer / 31 | Summary and the evidence-grounded workflow | Biological interpretation with model limits | A new method is needed to answer the task | Short evidence-grounded transfer task and collapsed answer |
| Reference / 32 | Introduced lesson terms | Locate definitions and related vocabulary | New required concepts in the glossary section | HTML glossary and explicit PDF online link |

## Implementation and review contract

- Resolve L1/L2 through rows 1 and 3; L3 through rows 12–16; L4 through contextual headings and removal of author rationale from visible text; L5 through selected tasks in rows 5–10, 12, 17, 21, 28 and 31; L6 through single named scenarios and object-derived values; L7 through verified glossary/style fixes; L8 through row 29.
- Keep tables semantically meaningful and unit-labelled. Preserve existing complete explanations and all approved optional boxes. Do not introduce p-values, inference tests or multivariable model fitting.
- Use one consistent candidate set in both artifacts and label small-subset versus whole-data SSE. Visible constants remain reproducible with a hidden agreement check; they do not depend on private helpers.
- Keep lesson data/models/calculations close to their first use; only global infrastructure in setup. Prefer existing shared brand and glossary behaviour, with canonical-owner changes only if the present infrastructure cannot support the required behaviour.
- Add figure-specific alt text and consistent Czech number formatting in visible prose/tables/equations. Preserve ordinary R syntax/output and Czech terminology.
- Implementation order: written materials, clean-session/code and glossary checks, canonical HTML/PDF render, separate complete-artifact vision review, visual inspection, then human review. The presentation map is a separate approval and remains conditional on this written backbone.
- Author audit: all concept blocks represented; headings read as a continuous content narrative; core route works without optional Q–Q/influence; definitions precede required symbols; no new statistical scope; no full replacement prose drafted.

## Human decision

Approved by Ondřej Mottl on 2026-10-06 (“approve both”), separately recorded for this learning-material map and its ledger.
