# Stage 6: release `L03-v0.6.1-20261005`

- **Target tag:** `L03-v0.6.1-20261005`, a lightweight tag on merge commit `82ed8f6` (PR #12). Ondřej Mottl requested the release on 2026-10-05.
- **Content since `L03-v0.6.0-20261004`:**
  - the first uses of *Q–Q graf*, *Pákový efekt* and *Cookova vzdálenost* in the diagnostic Extras now link to the glossary terms added in slovnik#2;
  - the re-rendered PDF uses the `_brand#10` semantic-boxes filter, so tabs appear as bold labels and the PDF table of contents no longer lists tab headings;
  - the workflow-record notes from #11 and #12.
- **Stable routes:**
  - `/L03/current/` (now serves v0.6.1);
  - `/L03/releases/L03-v0.6.1-20261005/`.
- **HUB:** `materialy.html` links to `/L03/current/`.
- **Public bundle:** the allowlist in `website-release.yml` is unchanged.
- **Pre-tag checks:**
  - local `main` was clean and equal to `origin/main` at `82ed8f6`;
  - the reviewed HTML and PDF were committed in #12;
  - the preview deploy of `82ed8f6` succeeded.

## Publication run and recovery

1. The tag push triggered "Release materials" run `37271763301`.
   - The `release` job succeeded and created the GitHub release with `web-materials-L03-v0.6.1-20261005.zip`.
   - The `pages` job failed and `notify-hub` was skipped.
   - This is the known same-commit failure: the preview workflow had just deployed `82ed8f6` (see `2026-10-04-stage-6-release-v0.6.0.md`).
2. Ondřej Mottl authorised the recovery in advance. It took two runs:
   - **L03 "Publish preview" (`workflow_dispatch`), run `37272079152`: success.**
   - **HUB "Publish course hub" (`workflow_dispatch`), run `37272160557`: success.**
3. **Live verification:**
   - `/L03/current/learning/index.html` and `/L03/releases/L03-v0.6.1-20261005/learning/index.html` return HTTP 200 and contain all three new glossary links.
   - `/L03/current/learning/skripta.pdf` returns HTTP 200.
   - The HUB materials page links to `/L03/current/`.

## Open risk

- The shared release workflow still fails when a tag points at a commit the preview has just deployed.
- An attempted fix (CUNI-NATUR-Biostatistics.github.io #8) gave every Pages deployment a unique, non-SHA build version.
  - The Pages API rejected that build version with HTTP 404, which broke all lesson deploys.
  - The change was reverted on 2026-10-05 (`0fb1ed6`).
  - A follow-up L03 preview run (`37267327720`) confirmed that deploys work again.
- Until a tested fix exists, use the same recovery after each release: dispatch "Publish preview", verify the routes, then dispatch the HUB publish.
