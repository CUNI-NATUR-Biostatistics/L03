# Workflow Templates

This folder contains fill-in templates for the stage-by-stage lesson lifecycle.

Use these files to keep implementation practical, reviewable, and historically traceable.

## How to use

1. Duplicate the relevant template from `Workflow/templates/`.
2. Save it in `Workflow/records/` with a date prefix, for example:
   - `2026-07-14-stage-0-scope.md`
   - `2026-07-15-stage-1-dataset.md`
   - `2026-07-18-stage-4-slides.md`
3. Add one short entry to `Workflow/STAGE_LOG.md` summarizing what changed.
4. Link the record file in your PR description.

For release preparation, post-merge validation, and publication receipts, follow the [canonical publication workflow](../../_internal/.ai/core/publication.md#release-preparation-and-recordkeeping). Workflow record-copying and stage-log steps apply to authoring and pre-merge preparation. Post-merge release results go in the GitHub Release description and leave the lesson working tree unchanged; actual source fixes retain the normal branch and PR workflow.

## Recommended sequence

1. `stage-0-scope.md`
2. `stage-1-dataset.md`
3. `stage-2-learning-materials.md`
4. `stage-4-slides.md`
5. `stage-5-review-release.md`

## Why this exists

- Keeps weekly lesson production consistent.
- Makes review faster (same structure every week).
- Preserves a clear history of decisions and revisions.
