# Stage 6: release L03-v0.7.0-20261007

- Requester: Ondrej Mottl, 2026-10-07: "branch merged. Please make a new Release".
- Target: `L03-v0.7.0-20261007`, merged `main` commit `2b22ba24ae162b68ef5e3b14c9f332bd039a6c76`, PR #14. The minor version reflects substantial learning-material and presentation revisions.
- Human acceptance: the user merged PR #14 and requested publication of the merged lesson.
- Stable route: https://cuni-natur-biostatistics.github.io/L03/current/.
- Immutable route: https://cuni-natur-biostatistics.github.io/L03/releases/L03-v0.7.0-20261007/.
- Expected HUB refresh: the standard release workflow notifies the central HUB after successful lesson Pages verification; the HUB links to stable routes.

## Pre-publication validation

Local `main` was clean and matched remote `main`. Its complete tree is identical to the reviewed polish branch. The merged preview deployment and PollsLive validation passed. No source or rendered material was changed for this release.

The canonical shared Ruby packager built `web-materials-L03-v0.7.0-20261007.zip` from an exact `git -c core.autocrlf=false archive` snapshot. Validation passed for ZIP integrity, the exact 11-resource manifest allowlist, all resource sizes and SHA-256 checksums, UTF-8 without BOM/replacement characters, and credential-pattern checks. The bundle includes the license and data provenance, both HTML/PDF/QMD artifacts, the existing public exercise script, and both datasets. The PDFs contain 47 learning-material pages and 56 presentation slides. Iris has 150 rows; Palmer Penguins has 344 rows; both CSV hashes match the published data provenance.

The latest complete-artifact render and independent review evidence is in `2026-10-07-review-revisions.md`; rendering was not repeated solely to publish the unchanged committed artifacts. The existing Wikimedia flower photograph attribution matches its CC BY-SA 3.0 source page, https://commons.wikimedia.org/wiki/File:Iris_versicolor_4.jpg. Generated title artwork has recorded prompt, provenance, alt text, disclosure, and hash. The existing license preserves third-party exclusions. Public repository visibility, Actions-based Pages, and deployment policies permitting `main` and `L03-v*` were confirmed.

## Remaining limitations

Shared-theme code size, static-PDF roughnotation omissions, and accepted self-study PDF pagination gaps remain as recorded in the latest review. Classroom pacing and live PollsLive behaviour are not established by offline rendering. Quiz configuration and exercises are unchanged.

## Publication result

The published stable GitHub release is https://github.com/CUNI-NATUR-Biostatistics/L03/releases/tag/L03-v0.7.0-20261007. Release ID: `405686489`; published at `2026-10-07T11:27:01Z`. The tag resolves to the merged main commit above. The downloaded public ZIP passed integrity and exact expected-manifest comparison; all 11 public resource hashes and sizes match the locally validated exact Git snapshot. ZIP SHA-256: `3ef3d9949f0399eeae53f0b0a3072d4ed3e2d43f3cf48474bb1fbcf8d77e606c`.

Release workflow https://github.com/CUNI-NATUR-Biostatistics/L03/actions/runs/37614121007 completed with the release job successful, Pages failed, and HUB notification skipped. Initial deployment verification and the automatic redeployment both failed: expected deployment-check markers returned HTTP 404 throughout the final 12 attempts. This matches the existing same-commit stale-deployment risk documented for v0.6.1. No contaminated workflow rerun was attempted.

Independent live verification after the failed workflow confirmed `/L03/current/manifest.json` still identified `L03-v0.6.1-20261005`; the HUB materials page likewise identified v0.6.1 and had stable L03 links. Lesson Pages and HUB publication of v0.7.0 were incomplete at that point.

Recovery approved by Ondrej Mottl on 2026-10-07 with "I approve", in direct response to the request to run L03's `preview.yml` and the HUB's `publish.yml`. The approved sequence is a fresh L03 dispatch on `main`, verification of both stable/immutable manifests and all 22 public resource hashes, then the HUB dispatch on `main` and verification of its new release entry and stable links. The L03 dispatch has been submitted; final run and live verification results follow below.

L03 recovery workflow https://github.com/CUNI-NATUR-Biostatistics/L03/actions/runs/37625411334 succeeded on the merged main commit. Independent HTTP checks confirmed that both `/L03/current/manifest.json` and `/L03/releases/L03-v0.7.0-20261007/manifest.json` exactly match the published release manifest. All 11 public resources under each route (22 HTTP resource checks) match their expected byte sizes and SHA-256 hashes.

The approved HUB refresh was submitted after these checks passed. HUB workflow https://github.com/CUNI-NATUR-Biostatistics/CUNI-NATUR-Biostatistics.github.io/actions/runs/37625637187 succeeded. Independent HTTP verification of https://cuni-natur-biostatistics.github.io/materialy.html confirmed the `L03-v0.7.0-20261007` entry and all 11 L03 material links. Every link uses `/L03/current/` and matches a resource whose live release hash was verified above; no L03 preview link is presented as stable material.

Final outcome: the stable GitHub Release, immutable and current lesson Pages routes, and central HUB publication are all verified. The shared tag-triggered stale-deployment defect remains an infrastructure risk; this release was recovered through the approved fresh workflows. No source changes, additional Git commits, branch pushes, or live PollsLive operations were performed during recovery.

This local workflow record is not part of the public release bundle and is left uncommitted for the repository owner.
