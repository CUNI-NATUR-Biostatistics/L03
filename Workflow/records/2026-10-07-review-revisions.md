# L03 pre-teaching review revisions (second polish round)

- Date: 2026-10-07
- Branch: `polish/l03-before-teaching`; local source and generated-output changes only. No staging, commits, pushes, pull requests, live PollsLive synchronization or publication.
- Trigger: after teaching L01 and polishing L02, Ondřej Mottl asked for a full review of the L03 learning materials and presentation against the canonical `.ai/` guidance and the actual L01/L02 style. The review produced 28 numbered findings in groups A (correctness and confusion), B (presentation) and C (learning materials).
- Human decision: Ondřej Mottl, 2026-10-07, “I approve all of them”, with two specifications: item 3 “try to find data with mixed sign”; item 9 “It is fine we do not keep the promise” (L02's closing promise of a penguin grams-per-millimetre answer is deliberately not paid off in L03). This approval also revises the presentation map approved on 2026-10-06; the revised map is below.
- Builds on: `2026-10-06-presentation-polish-story-map.md`, `2026-10-06-learning-material-polish-story-map.md`, `2026-10-06-polish-implementation.md`.

## Implemented changes

### Both artifacts

1. **Four worked flowers with mixed signs (item 3).** Rows 3, 82, 117 and 101 of `kosatce.csv` (widths 0,2 / 1,0 / 1,8 / 2,5 cm). Under candidate line B their residuals are −0,24 / +0,40 / +0,44 / −0,60 cm and sum to 0, which now motivates squaring explicitly in both artifacts. B still has the smallest four-flower SSE (A 6,25; B 0,77; C 6,82 cm²). Row 101 (flower 4) is the single worked flower in both artifacts (item 4).
2. **Comparison wording for the slope (item 2).** “Dva květy, jejichž šířky se liší o 1 cm, se podle modelu liší v průměru o … cm” replaces intervention wording in the answer box, the parameter list, the summary, the spine-return slide, the slope MCQ and the opening slides.
3. **Colours (items 5, 6).** Candidate, intercept and slope lines are all model purple, distinguished by line type and direct labels. Species use the `_brand` categorical palette (`clr_skupiny`: teal, terracotta, steel blue) instead of Dark2. Raw-data violins and schematic residual points are grey; the hidden response-versus-residual histogram in the learning materials and the slide histogram show residuals in orange (the visible base-R histogram stays default grey, as students reproduce it); the learning materials say “oranžové úsečky”. Odezva/prediktor highlights use graphite.
4. **Shared learning outcomes (item 8)** in both artifacts; both summaries mirror them.
5. **Data from `data/kosatce.csv` (items 16, 22).** Visible code uses `read.csv(file = "data/kosatce.csv")` as in the practical; the learning materials set `root.dir` as L02 does and add the collapsed “Doplňující: jak vznikl soubor kosatce.csv” box (Anderson 1935, Fisher 1936, R `datasets`, GPL, `R/prepare_l03_data.R`, base-R export).
6. **Decimal commas in figures (item 18).** Presentation figures are saved with `OutDec = ","` inside `save_local_figure()`; hidden learning-material figure chunks use a knitr hook. Printed R output is unchanged.

### Presentation (63 → 56 slides after independent review)

- Slide 13 shows the four worked flowers instead of `head()`; slide 14 merged into the relation MCQ; the two candidate-line slides merged into one vote slide; the line-only step and the separate equation slide removed from the one-flower build (now three build slides + sign MCQ); the separate “Co tento odhad neříká?” and “Co z lineárního modelu neplyne?” slides merged into the two-column spine return and the species answer.
- “Co přidá model?” no longer reveals the answer to the next role MCQ.
- New noticing prompts on both species slides; species answer slide carries the “První model je začátek argumentu” takeaway.
- `# Závěr` divider added; first divider renamed `Dvě měření, dvě role`.
- Closing question follows the L01/L02 series pattern: `Co potřebujete vidět, než napíšete „o centimetr širší lístek, o 2,23 cm delší lístek“?` with a pair prompt and the bridge fragment.
- All correct-answer annotations use `.rn-circle-orange`; slope MCQ options have equal widths and comparable precision.
- Zoomed half-width figures for the single-flower calculation; larger canvases for the residual, species and candidate figures; `slide-margin-top-15` on text-only slides; SSE table rendered with `tinytable`.
- Intercept/slope answer strips are fragments; `panel-indigo` for the model rule; hard-wrapped copy and notes unwrapped; outcomes intro as in `presentation.md`; hidden code renamed (`data_ctyri_kvety`) and made vertical.

### Learning materials

- `code-fold: false` as in L01/L02 (item 21).
- New `Úvod` with one question box and an A/B/C prediction plus collapsed answer (L02 pattern); repeated statements of the question removed (item 23).
- Step narration (“Teprve potom…”, “Až potom…”, “Nejprve…”) replaced by content lead-ins (item 1).
- Four-flower figure has numbered points; the residual table is printed once; the zero-sum observation precedes SSE (items 26, 27).
- `Co bude následovat dál` (bridge), `Shrnutí` and `### Závěrečná otázka` with a collapsed `Možné otázky` box, as in L02 (item 24).
- “residuum/residua” spelling; “rozptýlení” for spread (item 25); `typst` unbreakable blocks keep short code with output and the SSE table together (item 28).

## Revised presentation story map

Rows not marked † keep their 2026-10-06 internal role and speaker note.

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Title | Mají širší korunní lístky kosatců také větší délku — a pokud ano, o kolik? | |
| 2 | Visual hook | Jakou délku odhadneme z naměřené šířky? | |
| 3–6 | Previous-lesson retrieval | Co si pamatujete z minulé lekce? + three questions | Unchanged PollsLive include |
| 7 | Outcomes | Výsledky učení | † Shared list |
| 8 | Section divider | Dvě měření, dvě role | † Renamed |
| 9 | Question in units | Co chceme zjistit ze známé šířky? | † Comparison wording |
| 10 | Correlation vs model | Co přidá model? | † No role answer |
| 11 | Ruler metaphor | Jedna přímka shrnuje mnoho květů | |
| 12 | Role MCQ | Která proměnná má kterou roli? | † Asks which measurement is estimated; fragment then names odezva and prediktor |
| 13 | Data table | Dvě měření každého květu | † Four worked flowers + data summary |
| 14 | Shape MCQ | Jaký vztah vidíte? | † Merged with former evidence slide |
| 15 | Interpretation | Co z tohoto grafu můžeme říct? | |
| 16 | Section divider | Co rozhoduje mezi přímkami? | |
| 17 | Animation prompt | Která z mnoha přímek vystihuje měření? | |
| 18 | Candidate vote | Kterou ze tří přímek byste vybrali? | † Merged two slides |
| 19–20 | Intercept/slope manipulation | Co se změní, když přímku posuneme? · …nakloníme? | † Answers as fragments |
| 21 | Parameter naming | Dvě čísla popíší každou přímku | |
| 22 | Section divider | Jak daleko je měření od přímky? | |
| 23–25 | One-flower build | Jeden květ a přímka B · Odhad přímky pro stejnou šířku · Mezi měřením a odhadem zůstává rozdíl | † Three steps (line + point together) |
| 26 | Sign MCQ | Jaké znaménko má residuum? | † Includes the residual word equation |
| 27–28 | Worked numbers | Odhadnutá délka vybraného květu · Residuum vybraného květu | † Zoomed figures |
| 29 | Caveat | Residua očekáváme i u užitečného modelu | |
| 30 | Four flowers | Čtyři květy, stejná přímka | † Mixed signs; zero sum fragment |
| 31–36 | SSE block | Jak porovnat celé přímky? · Jiná přímka, jiné vzdálenosti · Čtverce residuí čtyř květů · Stejná residua v R · Která přímka je nejlepší podle těchto dat? · Počítač hledá nejmenší součet čtverců | † New flowers; visible sum and SSE |
| 37 | Section divider | Přímka odhadnutá ze všech květů | |
| 38–39 | Data in R | Stejná měření v R · Co obsahuje `data_kosatce`? | † CSV |
| 40 | Generic → concrete call | Jak funkce `lm()` spojuje odezvu a prediktor? | † Merged with former concrete-arguments slide (fragments) |
| 41 | Prediction + fit | Jaké koeficienty model odhadne? | † Merged fit and coefficients; prediction against candidates A/B/C first |
| 42–43 | Fitted line + slope MCQ | Přímka odhadnutá z těchto měření · Co znamená odhadnutý sklon? | † Comparison wording |
| 44 | Spine return | Co už víme o korunních lístcích? | † Verbatim opening question in the box; result and still-open columns |
| 47 | Causation | Souvislost délky a šířky není důkaz příčiny | |
| 48 | Section divider | Co zůstává mimo přímku? | |
| 49–52 | Residual diagnostics | Jak jsou residua rozdělená? · Mění se residua podél odhadnuté délky? · Vidíte neuspořádaný mrak, nebo zbývající vzor? · Které stopy by nás u přímky zneklidnily? | |
| 53–54 | Species reveal | Stejná původní data, ale s druhem · Stejná residua, ale s druhem | † Noticing prompts; brand group palette |
| 55 | Species answer | Co model neviděl? | † Result panel; fragment gives computed shares above/below zero per species; absorbs former “Co z lineárního modelu neplyne?” takeaway |
| 56 | Section divider | Závěr | † New |
| 57 | Summary | Shrnutí | † Mirrors outcomes |
| 58 | Closing question | Co potřebujete vidět, než napíšete „o centimetr širší lístek, o 2,23 cm delší lístek“? | † Series pattern; bridge fragment |

Removed former slides (2026-10-06 numbering): 14 `Všechny naměřené květy`, 19 `Tři kandidátní přímky`, 25 line-only step, 29 `Naměřená délka minus odhadnutá délka`, 51 `Co tento odhad neříká?`, 61 `Co z lineárního modelu neplyne?`; added `# Závěr`. 63 − 6 + 1 = 58; the independent review then merged rows 40–41 and 42–43 of that draft, giving 56 slides. In the table above rows after 43 keep their 58-slide numbering; final numbering is two lower (spine return 44, causation 45, H1 dividers at 8, 16, 22, 37, 46, 54; summary 55; closing question 56).

## Revised learning-material story map (changed rows)

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Opening question and prediction | Úvod | Question box once, A/B/C prediction with collapsed answer (L02 pattern); roles of odezva and prediktor stated from the biological question |
| 2 | Outcomes | Výsledky učení | Shared list with the presentation |
| 3 | Data entry and checks | Každý květ má dvě měření | `read.csv()`, `str()`, `summary()`, missing values, species counts; Extra “Doplňující: jak vznikl soubor kosatce.csv” |
| 5.x | Worked flowers | Čtyři květy a jedna zvolená přímka (subsections unchanged) | Rows 3, 82, 117, 101; flower 4 is the worked case; zero-sum before SSE |
| 5.6 | Slope from two points | O kolik se liší odhadnutá délka? | Comparison wording; rows labelled by flower |
| 9.2 | Species residuals | Druhy v grafu odhadnutých délek a residuí | New collapsed answer with computed shares per species |
| 11 | Bridge | Co bude následovat dál | Moved out of the limits section (L02 pattern) |
| 12 | Summary + closing | Shrnutí · Závěrečná otázka | Mirrors outcomes; closing question matches the slide; collapsed “Možné otázky” |

The removed H2 `Co zkontrolujete před biologickým závěrem?` became `### Závěrečná otázka`.

## Knowledge-state ledger changes

- Row 10 no longer names odezva/prediktor roles before the row-12 MCQ asks for them.
- The zero sum of residuals (row 30) precedes “Odstranit znaménko” (row 31), so squaring is motivated by visible evidence.
- In the learning materials the comparative slope sentence now appears where `lm()` output is interpreted, not before slope is introduced.

## Validation

- Canonical renders passed: `R/render_skripta.R` (HTML + 47-page PDF) and `R/render_presentation.R` with `POLLSLIVE_RENDER_MODE=offline` (HTML + 56-page static PDF). `docs/index.html` matches `Presentation/presentation.html`.
- The offline render needs the pinned client `8f85e9f9e31dc1b0f05912d5605e4c9cc557e8e6`, which was not cached. As on 2026-10-06, it was extracted read-only with `git archive` from local `_internal` into the session scratchpad, its lockfile dependencies installed there with `npm ci --ignore-scripts`, and passed through `BIOSTAT_POLLSLIVE_CLIENT_SOURCE`. Quiz definition, assets and configuration are unchanged; no registry, scheduling or live synchronization was touched.
- All 30 visible learning-material chunks and the 5 visible presentation chunks ran with `Rscript --vanilla` from a folder containing only `data/kosatce.csv`; outputs match the documents (four-flower SSE 0,7712 cm²; coefficients 1,083558 and 2,229940).
- Source checks: UTF-8 without BOM, no replacement characters, unique chunk labels (53 and 62), no remaining Dark2 hex colours or old row numbers.
- Full PDF contact sheets of both artifacts inspected; slides 19, 20, 26–28 and 30 and learning-material page 12 re-inspected at full size after fixes.

## Open items

- Code blocks on the R slides (38–41) remain small. Their size is set by the shared `_brand` presentation theme (same in L01/L02); a lesson-local fix would require forbidden lesson-specific CSS. A reusable larger-code utility belongs in `_brand` if wanted.
- Retrieval quiz unchanged (no number-reading question); changing it needs separate approval and resynchronization before 2026-10-19.
## Independent review and resolutions

A separate read-only reviewer applied `.ai/agents/vision-corrector.md` to both complete artifacts (all 58 slide canvases and 46 PDF pages) and `.ai/agents/glossary-coverage-reviewer.md` to the learning materials. Resolved:

- **High:** the role MCQ quizzed “odezva” before it was defined → the question asks which measurement is estimated; a fragment then names odezva and prediktor.
- Decimal commas in display maths rendered as “1, 1” → new `R/Functions/format_cz_math.R` wraps numbers in `\text{}` with a true minus sign; worked residuals keep two decimals. Verified in MathJax (slides) and Typst (PDF).
- Species question unanswered → computed answer box (learning materials) and fragment (slide 55).
- Lines 38–43 visually flat without interaction → merged to two slides with a prediction prompt (56 slides).
- Intercept labels now sit at width 0 with crossing points; stable caption position across the one-flower build; larger zoomed labels and point numbers; wider schematic figure; nonexistent `.text-size-heading1` replaced by `.text-size-heading`; parameter panels share the model colour; species answer in a result panel; spine question verbatim; “Formula” → “Vzorec modelu (`formula`)”; computed zero-sum takeaway.
- Learning materials: `lm(odezva ~ prediktor)` in outcomes; repeated question and “mentální úkol” removed; “Nezávislost pozorování”; slope-table rows labelled by flower; trimmed violins; candidate values reused from one object in both artifacts; named arguments and vertical style in visible code.
- Glossary: all 11 missed first occurrences linked; symbol text moved outside the `intercept`/`sklon` display strings.

Not changed, with reason:
- Roughnotation answer marks do not appear in the decktape PDF. This is the shared `_brand` export path (L01 and L02 use the same mechanism); a print fallback belongs in `_brand`.
- Code size on slides remains the `_brand` default.
- Some half-empty PDF pages remain where long plot chunks cannot share a page; acceptable for a self-study PDF.

Final validation after the fixes: both canonical renders pass (learning materials 47 PDF pages; presentation 56 slides, offline); `docs/index.html` matches; UTF-8 without BOM or replacement characters; unique chunk labels; all visible chunks run in a clean session from `data/kosatce.csv` alone.

Follow-up verification by the same reviewer: all findings resolved. Its remaining low items were also fixed (clipped labels on slides 27–28, slide 12 wording no longer contains the answer, one-line heading on slide 23 for a stable figure size, intercept figure without negative-width lines, a duplicate glossary link); the near-empty final PDF page with the online-glossary note is accepted.

## Remaining gate

Final human review by Ondřej Mottl.
