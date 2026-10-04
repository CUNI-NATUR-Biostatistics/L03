# Stage 6: release `L03-v0.6.0-20261004`

- **Target tag:** `L03-v0.6.0-20261004`, a lightweight tag on merge commit `4439c77` (PR #10, diagnostic Extras). Ondřej Mottl requested the release on 2026-10-04.
- **Content since `L03-v0.5.0-20261001`:**
  - optional learning-material Extras for the Q–Q plot of residuals, leverage and Cook's distance (`Workflow/records/2026-10-04-diagnostic-extras.md`);
  - the shared `_brand` sync of `R/Functions/render_glossary_term.R`, `R/Functions/render_presentation_outputs.R`, `theme/brand_manifest.json` and `theme/presentation_components.scss`.
- **Stable routes:**
  - `/L03/current/` (now serves v0.6.0);
  - `/L03/releases/L03-v0.6.0-20261004/`.
- **HUB:** `materialy.html` links to `/L03/current/`, so it picks up v0.6.0 without a link change.
- **Public bundle:** unchanged allowlist in `website-release.yml`:
  - learning and presentation HTML, PDF and QMD;
  - `Exercises/cviceni.R`;
  - `data/kosatce.csv` and `data/palmer_penguins.csv`;
  - `LICENSE.md` and `data/README.md`.
- **Pre-tag checks:**
  - `main` was clean and up to date at `4439c77`;
  - every manifest path is tracked;
  - the reviewed HTML and PDF of the learning materials were committed in #10.

## Publication run and recovery

1. The tag push triggered "Release materials" run `37222929995`.
   - The `release` job succeeded and created the GitHub release with `web-materials-L03-v0.6.0-20261004.zip`.
   - The `pages` job failed and `notify-hub` was skipped.
   - `actions/deploy-pages` reported success for build version `4439c77`, but the verification marker returned HTTP 404 in all 18 checks (6 initial, 12 after redeployment).
   - The "Publish preview" run from the merge push had deployed the same commit 40 seconds earlier. The release deployment of the same build version was apparently never served.
2. Re-running the failed job (attempt 2) cannot succeed. `actions/deploy-pages` stops because the first attempt's `github-pages` artifact is still present ("Multiple artifacts named github-pages … count is 2").
3. Ondřej Mottl authorised the recovery, which took two runs:
   - **L03 "Publish preview" (`workflow_dispatch`), run `37225510093`: success.** It downloads every release bundle and rebuilds `/current/` and `/releases/<tag>/`.
   - **HUB "Publish course hub" (`workflow_dispatch`), run `37225584863`: success.**
4. **Live verification:**
   - `/L03/current/learning/index.html` and `/L03/releases/L03-v0.6.0-20261004/learning/index.html` return HTTP 200 and contain the new Cook's distance box.
   - The HUB materials page links to `/L03/current/`.

## Open risk

- The run history of `37222929995` still shows the failure, even though the release is published.
- `L03-v0.5.0-20261001` failed the same way (run `36917626031`) and was recovered by a manual preview dispatch on 2026-10-01.
- The cause lies in the shared release workflow in `CUNI-NATUR-Biostatistics.github.io`, which this repository cannot fix.
- Until it is fixed, a tag pushed shortly after a merge that triggers a preview deploy will hit the same failure. The recovery is the same: dispatch "Publish preview", verify the routes, then dispatch the HUB publish.
