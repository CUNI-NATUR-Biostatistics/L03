# L03 pre-teaching polish: implementation and verification

## Outcome and authorization

Implemented the complete approved learning-material and presentation maps on `polish/l03-before-teaching`, based on `dedf899`. Ondřej Mottl explicitly approved both maps and their separate knowledge-state ledgers on 2026-10-06 with “approve both”; no revisions were requested. This record closes the findings in [the original audit](2026-10-06-polish-review.md). The matching [learning-material map](2026-10-06-learning-material-polish-story-map.md) and [presentation map](2026-10-06-presentation-polish-story-map.md) retain their separate approval records.

The current L01 and polished L02 sources were the style references: question-led biological story, concrete evidence before abstraction, neutral choice cards, commitment before answer reveal, content headings, shared visual components and explicit R inspection. The iris story, all existing substantive teaching sections and the approved Q–Q, leverage and Cook's-distance Extras remain. The initial polish retained the question-led branded title. The user's subsequent explicit artwork request was implemented and validated in [the title-illustration follow-up](2026-10-06-title-illustration.md).

## Audit findings resolved

| Finding | Implemented repair |
|---|---|
| P1 | Equal neutral option cards; partner commitment precedes correct-answer annotations, including the slope question. |
| P2 | Actual residual graph stays on the discussion slide. |
| P3 | Meaning and numerical values precede compact residual notation; each symbol, index and unit is defined. |
| P4 | Hidden data, comparisons, fitted model and diagnostic plots are prepared at their first teaching use; setup contains infrastructure. |
| P5 | Four-flower observations, predictions and residuals are explicit before SSE; animation, static fallback and visible base-R calculation use the same four measurements. |
| P6 | An uncoloured fitted-line graph follows the actual model coefficients, before species are revealed. |
| P7 | Five question-led H1 dividers provide navigation; the exact approved 63-slide heading strip is preserved. |
| P8 | Student-facing prompts replace presenter mechanics and generic staging language. |
| P9 | Model coefficients, predictions, counts and SSE values come from source objects; repeated visible teaching constants have consistency guards. |
| P10 | Canonical brand theme and shared quiz cards replace local drift; GIFs have a same-data static continuation. Canvas dimensions/DPI make chart labels readable. |
| P11 | Calculation pacing, units and diagnostic recognition are explicit; a bounded four-panel schematic checks curvature, spread and order before the species payoff. |
| L1 | Explicit penguin-to-iris transfer explains directional response/predictor roles. |
| L2 | Unit of observation, preparation, types, ranges and missingness are in the core route; acquisition details remain optional. |
| L3 | Worked calculations use aligned stages; tables and SSE include cm/cm²; index and change notation are explained immediately. |
| L4 | Headings and transitions describe biological observations, quantities and conclusions. |
| L5 | Selected noticing questions and delayed/collapsed interpretations accompany figures; a final biological transfer question closes the lesson. |
| L6 | Counts are derived and candidate A/B/C parameters are shared consistently; four-flower versus all-flower SSE is explicitly distinguished. |
| L7 | Verified first-use glossary links, clearer object names, base-R-first alternatives and canonical semantic colours; the heading filter avoids nested glossary/TOC links. |
| L8 | Graphical recognition remains an earned skill; formal tests and remedies are deferred precisely. |
| Shared workflow | Complete separately approved maps/ledgers precede editing; full independent artifact and glossary reviews precede human review. |

## Independent review and follow-up repairs

Separate read-only reviewers `review_learning` and `review_presentation` applied the canonical vision-review prompt to their complete artifacts and compared them with L01/L02. The learning reviewer also applied the glossary-coverage prompt. The written-material backbone was independently accepted before slide drafting.

All credible follow-up findings were resolved: first-use object preparation, frozen ggplot layer data for the one-flower sequence, scalar palette names, the first residual glossary link, the Cook-section cross-reference, plot/legend clipping, SSE frame legibility, equation wrapping, histogram noticing and the initially empty summary card. The final browser check also found and fixed a missing jQuery dependency used by kableExtra's HTML helper; the dependency is registered only for HTML through knitr metadata. Generated brand sources were synchronized through the canonical mechanism.

Final independent verdicts on 2026-10-06: **no findings** for the complete learning materials, their separate glossary pass and the complete presentation. The learning reviewer inspected all 45 refreshed PDF pages; the presentation reviewer inspected all 63 PDF canvases, the complete reveal sequence and final revised slides 54/62. Both artifacts are ready for human review.

## Validation

- Canonical local rendering passed for both artifacts: learning-material HTML/PDF (45 pages); offline RevealJS HTML and static PDF (63 slides), with `docs/index.html` matching the presentation HTML.
- Parsed all 52 written-material and 64 presentation R chunks. Ran all 29 and 5 student-visible examples, respectively, in fresh example environments without relying on hidden lesson objects. Both complete renders executed hidden computations and consistency guards.
- Exact approved heading-strip comparison passed. QMD files have unique chunk labels, valid UTF-8 and no replacement/control-character corruption. Source-only Git whitespace checks passed; generated HTML whitespace and binary PDF bytes are excluded from that check.
- Full written PDF and full presentation/fragment canvases were visually inspected, with full-size checks of equations, legends, candidate comparisons and diagnostic panels. The 13-frame SSE animation includes checked start, candidate B and opposing endpoint; the static B continuation is readable.
- Browser learning-material QA passed: all 16 tabs activate, a native collapse toggles, glossary hover definitions are present, no nested TOC anchors and no JavaScript errors.
- Browser RevealJS QA passed on all 111 final slide/reveal states with no JavaScript errors or DOM overflow. The preceding complete 112-state visual pass and further final summary/histogram composition checks cover every retained reveal; making the first summary item immediately visible removes one reveal state.
- `node pollslive/validate.mjs` passed without credentials. Quiz definition, pinned client revision and evidence assets are unchanged. Rendering used offline retrieval; the exact configured `_internal` client blobs were extracted read-only to a temporary local cache because the normal cache was absent. No registry, scheduling, client migration or live synchronization was performed.

The local render initially failed once without a useful diagnostic; a direct diagnostic render and subsequent canonical renders passed. R prints pre-existing startup locale notices before the render wrapper selects the Windows UTF-8 locale and a package-build-version warning for `fs`; final Czech output was verified.

## Repository scope and remaining uncertainty

Only L03 teaching sources, local helper functions, generated brand cache, rendered outputs/assets and workflow records changed. L01/L02 are references; exercises and PollsLive configuration are unchanged. Unrelated workspace changes were preserved. Temporary QA/cache artifacts created for this work were removed after inspection.

The artifacts are ready for human review. Classroom pacing on the actual projector and live PollsLive operation remain human/live checks; local offline rendering does not establish either. No files were staged, committed, pushed or deployed.
