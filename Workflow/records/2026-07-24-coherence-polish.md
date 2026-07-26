# L03 coherence and release audit

- Date: 2026-07-24
- Branch: `lesson/l03-coherence-polish`
- Scope: source-and-render regression audit; no redesign of the validated
  regression arc

## Findings and resolutions

- Corrected the forward bridge: L04 introduces sampling variability and
  confidence intervals; L05 introduces hypothesis testing and p-values.
- Confirmed that the opening callback uses only L02 concepts: biological
  question, candidate lines, visible relationship, and variability.
- Preserved the approved sequence from biological question through candidate
  lines, fitted values, residuals, SSE, and `lm()`.
- Wrapped dataset preparation and the four-row teaching dataset as optional
  supplementary content.
- Added the complete words → text-only equation → numbers → symbols
  progression for the introduced calculations.
- Clarified that `geom_smooth(method = "lm")` is useful for a quick first
  visualisation but does not replace a stored `lm()` object.
- Retained learning outcomes as an incremental highlighted bullet list and
  added semantic strips only where they clarify model or residual meaning.
- Marked `Exercises/cviceni.R` explicitly deferred; no practical content was
  authored.

## Validation required before merge

- [x] Rendered `Learning_materials/skripta.qmd` to HTML and PDF with its
  wrapper.
- [x] Rendered the standalone 47-state RevealJS HTML/PDF with its wrapper;
  `docs/index.html` and `Presentation/presentation.html` have identical
  SHA-256 hashes.
- [x] Fresh-session activation resolved to
  `D:/GITHUB/CUNI-NATUR-Biostatistics/L03`; `renv::status()` reported no
  issues.
- [x] The complete 47-state deck overview and all revised high-risk slides were
  visually inspected.
- [x] Completed final UTF-8, chunk-label, link, glossary, visible-code, and
  source-diff checks.
- [x] Confirmed that `Presentation/presentation.html` and `docs/index.html`
  remain byte-identical after the final render.

## Human review decision

Approved by the human reviewer on 2026-07-25. The validated regression arc is
retained, the learning outcomes remain highlighted bullets rather than panels,
and the revised bridge assigns confidence intervals to the following lesson
and p-values to the lesson after that.

The companion `slovnik` PR remains a shared release dependency, but the current
lesson source and rendered artifacts have passed their local validation.
