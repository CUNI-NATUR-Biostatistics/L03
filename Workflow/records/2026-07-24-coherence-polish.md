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
- [x] The complete deck overview remains the previously approved visual
  sequence; source changes affect only speaker-note bridges.
- [ ] Rerender written HTML after the companion exact-slug glossary-helper
  change is available without the legacy warning.
- [ ] Complete final UTF-8, chunk-label, link, and glossary checks immediately
  before publication.
