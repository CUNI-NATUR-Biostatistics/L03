# Stage Log

Use this file as the running history for lesson-production decisions and stage transitions.

## Entry format

| Date | Stage | Status | Key change | Record file | Branch / PR | Reviewer |
|---|---|---|---|---|---|---|
| YYYY-MM-DD | Stage X | started/in review/done | One sentence summary | `Workflow/records/...` | `branch-name` / #PR | Name |

## Current lesson log

| Date | Stage | Status | Key change | Record file | Branch / PR | Reviewer |
|---|---|---|---|---|---|---|
| 2026-07-15 | Stage 0 | done | Uzamčen scope L03 podle learning outcomes a osnovy | `Workflow/records/2026-07-15-stage-0-scope.md` | `init` / pending | Ondřej Mottl |
| 2026-07-15 | Stage 1 | done | Vybrán dataset `datasets::trees` pro první modelový blok | `Workflow/records/2026-07-15-stage-1-dataset.md` | `init` / pending | Ondřej Mottl |
| 2026-07-16 | Stage 1 | done | Dataset `trees` nahrazen daty `iris`, aby byl intercept čitelný při zobrazení x = 0 | `Workflow/records/2026-07-15-stage-1-dataset.md` | `init` / pending | Ondřej Mottl |
| 2026-07-16 | Stage 2 | done | Skripta rozvinuta do samostatně studovatelné lekce s konkrétním přechodem od přímky k modelu a residuím | `Workflow/records/2026-07-16-stage-2-learning-materials.md` | `init` / pending | Ondřej Mottl |
| 2026-07-16 | Stage 3 | done | Dokončena obsahová, glossary a vizuální revize; skripta přijata jako základ prezentace | `Workflow/records/2026-07-16-stage-2-learning-materials.md` | `init` / pending | Ondřej Mottl |
| 2026-07-16 | Stage 4 | done | Dokončena prezentace od návaznosti na předchozí lekci přes lineární model až k diagnostice residuí | `Workflow/records/2026-07-16-stage-4-slides.md` | `lesson/l03-presentation` / pending | Ondřej Mottl |
| 2026-07-20 | Stage 5 | done | Pět autorských revizí včetně závěrečného spacing passu uzavřeno; finální 47-slide deck vyrenderován, vizuálně zkontrolován a označen jako release-ready | `Workflow/records/2026-07-20-stage-5-review-release.md` | `lesson/l03-presentation` / pending | Ondřej Mottl |
| 2026-07-25 | Coherence audit | done | Lidská revize schválila upravené vysvětlení regrese, opravený most L03 → L04 → L05, zvýrazněné odrážkové výsledky učení, sémantické proužky a výslovně odložené cvičení. | `Workflow/records/2026-07-24-coherence-polish.md` | `lesson/l03-coherence-polish` / #3 | Ondřej Mottl |
| 2026-09-22 | Exercise | human approved; PR pending | L03 practical has eight core and four optional tasks; validation and independent re-review passed with no findings. Ondřej Mottl approved the exercise and release-manifest inclusion on 2026-09-22; a temporary package check passed. | `Workflow/records/2026-09-21-exercise-blueprint.md` | `lesson/l03-exercises` / PR pending | Independent exercise reviewer: no findings; Ondřej Mottl approved |
| 2026-09-28 | Learning-material assumptions | in review | Added the core four-part assumption map, a four-panel residual-pattern guide, a response-versus-residual histogram comparison, and bounded normality and influence previews; independent review, glossary review, HTML/PDF render, and 31-page visual PDF check passed. | `Workflow/records/2026-09-28-learning-material-extras.md` | `lesson/l03-learning-material-extras` / no PR | Independent vision review: no findings; human final review pending |
| 2026-10-04 | Learning-material diagnostic Extras | done | Added optional Extras for the Q–Q plot of residuals, leverage and Cook's distance (base-R and {ggplot2} tabs, 4/n as an orientation line only, a sensitivity refit, species check), with a bridge edit in the influence box. Story map approved; independent review findings resolved; HTML/PDF render and visual check of the new pages passed. | `Workflow/records/2026-10-04-diagnostic-extras.md` | `lesson/l03-diagnostic-extras` / #10 | Independent vision review: 1 blocking + 5 should-fix resolved; merged by Ondřej Mottl |
| 2026-10-04 | Stage 6 release | done | Released `L03-v0.6.0-20261004` (diagnostic Extras + brand sync). The tag-triggered Pages deploy failed after colliding with the preview deploy of the same commit. The authorised recovery ran a manual L03 preview dispatch and then the HUB publish dispatch; `/L03/current/` and the release route were verified live. | `Workflow/records/2026-10-04-stage-6-release-v0.6.0.md` | `release/l03-v0.6.0-record` / PR pending | Ondřej Mottl requested release and recovery |
