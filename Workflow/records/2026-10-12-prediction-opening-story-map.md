# L03 presentation: prediction-first opening and "lineární model" anchoring — story map

## Scope and approval record

- Artifact: `Presentation/presentation.qmd` only. Learning materials, exercises and PollsLive are unchanged. The skripta is checked for contradictions only.
- Date: 2026-10-12.
- Branch: `revise/l03-prediction-opening`; base: `5bfa24a` (`main`, after release v0.7.1).
- Trigger: lecturer feedback after teaching L02 (Ondřej Mottl, 2026-10-12):
  - The opening does not build the predictor/response mindset concretely enough. Students should meet the question "if we only measure X, what Y can we expect in the future?"
  - The term "lineární model" is not stressed. It appears on no visible slide, only in the title subtitle and one speaker note.
- Decisions taken with the lecturer before mapping:
  - The scenario is a future field survey: next season the botanist has time to measure only the petal width.
  - The term is named early, after the data moment, and reused at the key beats.
  - Scope is the presentation only.
- Story-map status: complete.
- Heading-strip audit completed: [x].
- Knowledge-state audit completed: [x].
- Human story-map approval: approved.
- Approver: Ondřej Mottl.
- Approval date: 2026-10-12.
- Decision and requested revisions: explicit user decision “I approve” for this presentation story map and its knowledge-state ledger; no revisions requested.

## Teaching scenario (named once, reused everywhere)

- Object: `sirka_novy_kvet <- 2` (cm). It is created on row O1, its first-use slide.
- Why 2,0 cm:
  - The model's estimated length at this width is about 5,54 cm. Flowers measured at exactly 2,0 cm average about 5,55 cm (n = 6, range 4,9–6,7 cm).
  - So the "average of similarly wide flowers" intuition and the fitted line agree. Students can later recognise their own guess in the model's answer.
  - At 1,3–1,8 cm, the band means sit 0,2 cm above the line because of species structure. That would blur the first encounter; the deck reveals species structure deliberately at the end.
- The exact band half-width (±0,05 or ±0,1 cm) is chosen during implementation and named once (`sirka_pasmo`).
- All values above are planning facts only. Every number shown on a slide comes from inline R.

## Story map — changed region (replaces current rows 8–16)

Current source (to be replaced):
- H1 "Dvě měření, dvě role"
- "Co chceme zjistit ze známé šířky?"
- "Co přidá model?"
- "Jedna přímka shrnuje mnoho květů"
- "Která proměnná má kterou roli?"
- "Dvě měření každého květu"
- "Jaký vztah vidíte?"
- "Co z tohoto grafu můžeme říct?"

| Order | Internal role | Heading level | Student-facing heading | Speaker note |
|---|---|---|---|---|
| O0 | Section divider | H1 | Změříme šířku — jakou délku čekáme? | Names the new terrain in everyday words: something measured, something expected. No method name yet. |
| O1 | Scenario and concrete data moment | H2 | Příští sezónu stihneme změřit jen šířku | Botanist scenario told aloud: last season she measured both values on every flower; next season she has time only for width. Show the existing four real rows (`data_ctyri_kvety`) plus a fifth row "nový květ": width from `sirka_novy_kvet`, length "?". Keep the full-data panel (n, missingness, ranges). Pose the question orally: "Jakou délku můžeme u tohoto květu čekat?" Bridge from L02: last time we only described the relationship; now we want to use it. |
| O2 | Pattern commitment | H2 | Jaký vztah vidíte? | Unchanged A/B/C scatter MCQ (`data_kosatce.png`). Students name the rising, roughly linear pattern with scatter. |
| O3 | Prediction commitment and evidence reveal | H2 | Jakou délku čekáte u květu širokého 2 cm? (number from `sirka_novy_kvet`) | Same scatter plus a vertical marker at the scenario width. First, 30 s individual guess and a neighbour comparison. Fragment 1: highlight flowers inside the band (orange focus) and show their length range. Fragment 2: their average length. Takeaway: equally wide flowers differ in length, so we can expect only a typical value, not the exact length. This absorbs the old "Co z tohoto grafu můžeme říct?" checkpoint (rising, scatter remains, flowers do not lie on one line). |
| O4 | Role naming from the scenario | H2 | Co změříme a co čekáme? | The role MCQ is reframed around the survey: "One measurement we take in the field, the other we want to estimate from it. Which is which?" Uses identical option cards and a neutral partner prompt. After commitment, a fragment shows the one-line strip: [prediktor]: šířka — změříme → [odezva]: délka — odhadujeme. Notes: unlike correlation, swapping the roles asks a different question (estimating width from known length). |
| O5 | Line as a rule; term naming | H2 | Jedna přímka shrnuje mnoho květů | Keep the ruler illustration, AI disclosure and alt text. A new fragment names the term: a straight line that gives an estimated length for every width is the simplest **lineární model**. Odezva and prediktor are the two roles inside it. This is the first visible use of "lineární model" after the title. |
| O6 | What the model adds over L02 | H2 | Co přidá lineární model? | Reworked contrast panel. Left, "Korelace (minulá lekce)": shows and summarises direction and tightness. Right, "Lineární model": (1) **o kolik** length differs between flowers 1 cm apart in width; (2) **jakou délku čekat** at a given width, e.g. the new flower. Takeaway: answers in cm; precision stays open until the next lesson. |

## Story map — later beats (light edits, no new section)

| Order | Internal role | Heading level | Student-facing heading | Speaker note |
|---|---|---|---|---|
| L1 | Learning contract | H2 | Výsledky učení (unchanged heading) | Bullet 1 becomes roughly: convert the question "when we measure X, what Y do we expect?" into a lineární model with odezva and prediktor. The other bullets are unchanged. |
| L2 | Line relationship | H2 | Dvě čísla popíší každou přímku (unchanged) | Add one fragment line: intercept and slope are the two numbers of the linear model; odhadnutá délka = intercept + sklon × šířka (already present as contextual equation; only the term is added). |
| L3 | Function grammar | H2 | Jak funkce `lm()` spojuje odezvu a prediktor? (unchanged) | Add an explicit decoding: `lm` = *linear model* = lineární model. |
| L4 | **New** scenario payoff | H2 | Jakou délku čekáme u nového květu? | Inserted after "Co znamená odhadnutý sklon?" and before "Co už víme o korunních lístcích?". It returns to the O1 flower: concrete substitution of `sirka_novy_kvet` into intercept + sklon × šířka, with coefficients from `mod_listky`, all inline. The fitted graph shows the purple point on the line at that width; the O3 band appears faintly for comparison. Takeaway: the model's estimate agrees with the students' "average of similarly wide flowers". Individual new flowers will still differ (residuals, next section); how precise the estimate is comes in L04. No new R function: the arithmetic mirrors the equation already shown. |
| L5 | Spine return | H2 | Co už víme o korunních lístcích? (unchanged heading) | Left panel gains one line: for a 2 cm-wide new flower the lineární model estimates about X cm (inline). |
| L6 | Recap | H2 | Shrnutí (unchanged) | Bullet 1 rephrased: lineární model — změříme prediktor, přímka vrátí odhadnutou odezvu. The rest is unchanged. |

All other rows (17–63 of the 2026-10-06 map) are unchanged.

## Physical count

- Opening region: 1 H1 + 7 H2 → 1 H1 + 6 H2 (−1).
- New payoff slide L4: +1.
- Net physical slide count is unchanged. The H1 divider count is unchanged (the current "Dvě měření, dvě role" divider is renamed).

## Heading-strip audit (opening read in order)

Výsledky učení → **Změříme šířku — jakou délku čekáme?** → Příští sezónu stihneme změřit jen šířku → Jaký vztah vidíte? → Jakou délku čekáte u květu širokého 2 cm? → Co změříme a co čekáme? → Jedna přímka shrnuje mnoho květů → Co přidá lineární model? → *Co rozhoduje mezi přímkami?* …

- Every heading is a question or observation in student language.
- No heading opens with a statistical term before its data moment. The only term in a heading, "lineární model" in O6, comes after it is named in O5.
- No internal role labels are used as headings.

## Knowledge-state ledger (changed blocks)

| Block / rows | May assume before | Introduced or earned here | Must not assume yet | Visible evidence / experience |
|---|---|---|---|---|
| Scenario / O0–O1 | L02 scatterplots, direction, correlation; units; iris hook and question | The task of using a measured value to expect an unmeasured one; one row = one flower | Any model, line, role names | Four real rows plus a new flower with "?" |
| Pattern / O2 | Scenario, paired measurements | Rising, roughly linear pattern with scatter | Exact numerical change | Full-data scatter |
| Own prediction / O3 | Pattern | Similar widths give varying lengths, so we expect a typical value (average of comparable flowers) | Fitted line, residual term, uncertainty interval | Band at the scenario width, highlighted flowers, inline range and mean |
| Roles / O4 | Own prediction | Prediktor = what we measure/know; odezva = what we estimate; roles are not interchangeable | Model formula, `lm()` | Neutral MCQ, then labelled arrow strip |
| Naming / O5–O6 | Roles, typical-value idea, L02 correlation | Lineární model = a line that turns a prediktor value into an estimated odezva; it answers "o kolik" and "jakou délku čekat" | Intercept/slope names, fitting criterion, precision | Ruler illustration plus naming fragment; correlation-vs-model contrast |
| Payoff / L4–L5 | Fitted `mod_listky`, coefficients, slope interpretation | The model's estimate for the scenario flower; agreement with the band average | Prediction interval, `predict()`, causal reading | Substitution with inline coefficients; point on the fitted line; faint band |

## Visual and computational contract

- Grey = measured flowers. Orange = current focus (the band, the "?" flower). Purple = model line and estimate. Text highlights match: odezva/prediktor are `.text-hgl-graphite` (measurements), lineární model is `.text-hgl-indigo_velvet`.
- `sirka_novy_kvet`, `sirka_pasmo` and the band subset are created on O1/O3 (first use). The O3 figure is built in a hidden chunk on O3. L4 reuses `mod_listky` and the band objects, a pedagogically explicit return.
- Inline R only for widths, counts, ranges, means, coefficients and the estimate (`format_cz()`). No copied numbers.
- Existing classes only. No new CSS. No new illustration; the ruler image carries the naming moment.
- Alt text for O1 (table), O3 (band figure) and L4 (payoff figure) in Czech.
- After approval:
  - Implement the slides.
  - Render with `R/render_presentation.R` and inspect the changed slides in HTML and PDF.
  - Run the locality, first-use and visible-copy audits.
  - Get an independent reviewer-subagent review.
  - Ask the lecturer for human review.

## Implementation and review (2026-10-12)

- Implemented as mapped. The band uses `sirka_pasmo <- 0.1` (17 flowers, 1,9–2,1 cm). Rendered deck: 56 slides; new section on slides 8–14, payoff on slide 43.
- Deviations from the map:
  - The payoff figure omits the faint band, because it was drawn over grey points.
  - The role MCQ stem lost its leading highlights. Its reveal now also states the reversed-question contrast.
  - The correlation panel is titled "Graf a korelace (minulá lekce)".
- Validation:
  - `POLLSLIVE_RENDER_MODE=offline Rscript R/render_presentation.R` succeeded.
  - Changed slides were inspected as PDF rasters (9, 11, 12, 13, 14, 20, 39, 43, 44, 55).
  - R-object locality, inline-value and first-use audits passed.
  - The synchronized PollsLive render requires a pushed upstream branch and is still pending.
- Independent review: a read-only subagent (Sonnet) applied `changes-reviewer.md` and `vision-corrector.md` to the complete deck. Result: 0 blocking findings and 5 should-fix findings, all resolved:
  - The figure continuity of the new-flower marker was fixed.
  - The over-general note sentence was corrected.
  - The MCQ was made less leading, and its instruction strip was removed.
  - Strip fatigue was reduced.
  - The outcome wording was revised.
- Optional findings applied: consistent "podobně široké" wording and the panel title. Not applied: "asi" before the two-decimal labels, kept for consistency with other deck values.
- Skripta check: no contradictions. The skripta does not contain the new-flower estimate; a possible future alignment.
- Human review of the revised deck: pending.
