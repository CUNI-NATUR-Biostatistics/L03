# L03 PollsLive retrieval quiz: integration map and exact questions

- Date: 2026-09-16
- Branch: `lesson/l03-presentation-standards`
- Workstream: focused post-presentation standards retrofit

Integration-map status: approved.

Exact-question status: approved.

Human approval: approved by the human author in this session on 2026-09-16, without requested revisions.

## Scope and integration map

The retrieval block replaces only the approved native callback slide `Minule jsme skončili tady`. It is inserted after `Výsledky učení` and before `Co přidá model?`; the remainder of the approved deck is unchanged. The standard sequence is participation, aggregate results, three native question-and-explanation slides, and the bridge `Od vztahu k modelu`.

| Position | Teaching move | Student knowledge used | Bridge |
|---|---|---|---|
| Participation | Three anonymous, ungraded questions | L02 only | Commit before discussion. |
| Q1 | Choose the first graph for two quantitative variables | L02 graph-choice gallery | A scatterplot makes the relationship visible. |
| Q2 | Read direction from the familiar penguin scatterplot | Direction and tightness in L02 | Direction alone does not quantify change. |
| Q3 | Distinguish association from causality | L02 causality boundary | L03 estimates a relationship without making a causal claim. |
| Bridge | `Od vztahu k modelu` | The plot shows association | Ask how much expected petal length changes with petal width. |

## Exact production questions

### Q1 — choose a graph

**Evidence:** the familiar L02 quantitative-by-quantitative gallery, reproduced from the approved source.

**Question:** Máme délku ploutve a tělesnou hmotnost každého tučňáka. Který graf je vhodný jako první pohled na jejich vztah?

1. Bodový graf — **correct**
2. Jeden histogram
3. Koláčový graf
4. Tabulka četností kategorií

**Explanation:** Obě proměnné jsou číselné a každá dvojice měření patří jednomu tučňákovi. Bodový graf zachová obě hodnoty i jejich párování.

### Q2 — read direction

**Evidence:** approved L02 figure `Presentation/Materials/prvni_bodovy_graf.png`.

**Question:** Jaký směr vztahu vidíme v bodovém grafu délky ploutve a tělesné hmotnosti?

1. Převážně rostoucí — **correct**
2. Převážně klesající
3. Bez viditelného směru
4. Graf ukazuje pouze jednu proměnnou

**Explanation:** Tučňáci s delší ploutví bývají v tomto souboru těžší. Body proto tvoří převážně rostoucí oblak.

### Q3 — state the supported conclusion

**Evidence:** approved L02 causality graphic `Presentation/Materials/korelace_neni_kauzalita.png`.

**Question:** Které tvrzení odpovídá tomu, co z tohoto pozorovacího grafu smíme vyvodit?

1. Delší ploutev způsobuje vyšší tělesnou hmotnost.
2. Tělesná hmotnost způsobuje růst ploutve.
3. Délka ploutve a tělesná hmotnost spolu v těchto datech souvisejí. — **correct**
4. Druh tučňáka nemůže vztah ovlivnit.

**Explanation:** Graf podporuje tvrzení o asociaci v pozorovaných datech. Sám neurčuje příčinu ani nevylučuje další proměnné.

## Knowledge-state ledger

| Item | Available before quiz? | Evidence |
|---|---|---|
| Two quantitative measurements can be paired by observation | yes | L02 data construction |
| Scatterplot for quantitative × quantitative data | yes | L02 graph-choice gallery |
| Positive versus negative direction | yes | L02 correlation block |
| Correlation does not establish causality | yes | L02 causality block |
| Outcome/predictor roles, fitted line, coefficient | no | introduced only after this quiz in L03 |

## Evidence and accessibility

All evidence is copied or deterministically reproduced from the final approved L02 sources and pinned by SHA-256. The same artifact appears in PollsLive and the native offline fallback. Each asset has Czech alt text and provenance; no private PollsLive identifier enters the definition.

## Implementation and validation

- `pollslive/quiz.json` uses schema version 2 and contains the three approved questions.
- The standard include is placed immediately after the learning outcomes and is followed by the approved bridge.
- `node pollslive/validate.mjs` passes without credentials.
- All R chunks parse; checked source files are UTF-8 without BOM or replacement characters; no duplicate chunk labels were found.
- Offline PollsLive rendering completed through the canonical presentation wrapper. The final PDF has 52 pages, and `Presentation/presentation.html` is byte-identical to `docs/index.html`.
- The generated `active.qmd`, `offline.qmd`, and `static.qmd` each contain all three questions and no development URL or placeholder.
- Focused PDF inspection covered the quiz fallback and the bridge.

### Final evidence checksums (SHA-256)

- `pollslive/assets/l02-graph-choice-gallery.png`: `7ECE367D82DF187D134E5DA4218A3C8D4E1C82AEE51957DC14E3145618186D22`
- `pollslive/assets/l02-penguin-scatterplot.png`: `FCD5FA7A34369D856BDD8C0FD2E6E472411D5A0785D17CDEFA9E76681F7E6C03`
- `pollslive/assets/l02-correlation-not-causation.png`: `729B9922BA4FD23452917E5B92D98A8B3221A6D137B6D948A4CBBDEFD8CFC199`

## Independent review

The first read-only review found answer-revealing evidence in L03 Q1 and L04 Q1/Q2, literal Markdown markers in fallback text, and incomplete workflow evidence. The evidence cards and quiz text were corrected and rerendered. The focused read-only re-review passed with no content or rendering blockers. It confirmed neutral L03 Q1 evidence, non-revealing L04 Q1/Q2 cards, clean fallback text, matching evidence hashes, approved include positions and bridges, and valid final PDFs.

## Operational limitations

Remote PollsLive synchronization, remote setting verification, QR/link testing on a second device, and schedule activation require an immutable pushed lesson commit and therefore remain pending. No remote poll operation was performed and no production response was submitted. Activation remains disabled.
