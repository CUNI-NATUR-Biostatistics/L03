# Presentation standards rollout

## Scope

- Date: 2026-09-16
- Branch: `lesson/l03-presentation-standards`
- Requirements: Issues #5, #6, and #8; Issue #7 is tracked in `2026-09-16-pollslive-retrieval-quiz.md`

## Decisions

- The first slide uses the approved question-first course title composition and canonical logo.
- The approved illustration after `Co přidá model?` shows an observer aligning a plain ruler through variable iris measurements. It introduces a line as a summary of noisy data before the model is formalized.
- The visible `coef(mod_listky)` call remains. A hidden `broom::tidy(mod_listky)` object now supplies the projected intercept/slope table and every subsequent displayed slope value; `tinytable::tt()` renders the table.
- A render-time assertion compares the tidy estimates with `coef(mod_listky)`.

## Generated illustration provenance

- File: `Presentation/Materials/iris_model_ruler.png`
- Generation mode: OpenAI built-in image generation; new bitmap asset.
- Generation brief: a field botanist observes varied irises and aligns a plain diagonal ruler as a fitted-line metaphor; warm scientific watercolor/editorial style; 16:9; no axes, text, numbers, formulas, logos, or watermark.
- SHA-256: `BC6CB8779544AA9954E806E8182465C51DFCE8EE4C56D891F785171AD74FF982`
- Student-facing metadata: Czech alternative text, visible AI disclosure, and a conceptual takeaway are present in the slide source.
- Approval: the human author approved this illustration concept in the implementation plan on 2026-09-16.

## Approved presentation story-map addendum

This focused addendum records the new slide approved in the implementation plan on 2026-09-16. It sits immediately after `Co přidá model?` and before `Která proměnná má kterou roli?`.

| Internal role | Student-facing heading | Evidence role | Takeaway | Transition |
| --- | --- | --- | --- | --- |
| Introduce a fitted line as a summary of variable observations before formal notation. | Jedna přímka shrnuje mnoho květů | A field observer aligns a plain ruler through irises with visibly different measurements. | Modelová přímka shrnuje hlavní směr proměnlivých dat. | Students next assign predictor and response roles before expressing the line as a model. |

## Knowledge-state ledger addendum

| Concept | Before this slide | Established on this slide | Used next |
| --- | --- | --- | --- |
| A line as a model summary | Students know that a model adds effect size to a scatterplot but have not yet attached that idea to a concrete visual action. | One line can summarize the dominant direction while observations still vary around it. | Predictor/response roles, fitted values, residuals, and the regression equation build on the same summary line. |

## Validation status

- The render-time assertion confirms the tidy estimates equal `coef(mod_listky)`.
- Canonical render: passed; HTML and PDF contain 52 slides, and `Presentation/presentation.html` matches `docs/index.html` by SHA-256.
- Visual inspection: passed, including the title at 1600 × 900 and 1280 × 720, the generated illustration, and the coefficient table.
- UTF-8, duplicate chunk-label, R parsing, focused diff, and `renv::status()` checks: passed.
- Independent read-only presentation review: passed after the story-map and knowledge-state addendum; no remaining finding.
- The approved three-question PollsLive retrieval block is implemented and validated offline; see `2026-09-16-pollslive-retrieval-quiz.md` for evidence, independent review, and remote activation gates.
- Git publication: follow-up authorization granted on 2026-09-16; review and merge state is tracked in the lesson PR.
