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
| 2026-09-21 | Exercise | in review | L03 practical scripted on iris and Palmer Penguins; two optional transfer tasks added before ggplot2; 12-task validation and independent re-review passed with no findings; human approval pending. | `Workflow/records/2026-09-21-exercise-blueprint.md` | `lesson/l03-exercises` / pending | Independent exercise reviewer |
