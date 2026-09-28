# L03 learning-material assumptions revision

## Approval and scope

- Date: 2026-09-28
- Branch: `lesson/l03-learning-material-extras`
- Human approver: Ondřej Mottl
- Decision: approved in the course-wide L01-L08 Extra-content review and explicitly authorised for implementation on 2026-09-28.
- Scope: consolidate the assumption map required by later inference while keeping remedies and formal tests deferred.

## Mandatory story map

- Artifact: Learning materials amendment
- Story-map status: complete
- Heading-strip audit completed: [x]
- Knowledge-state audit completed: [x]
- Human story-map approval: approved
- Approved by: Ondřej Mottl
- Approval date: 2026-09-28
- Approval decision and requested revisions: The course-wide L01-L08 Extra-content map was approved and implementation was explicitly authorised. On 2026-09-28 the instructor requested additional figures for the newly stated assumptions; the map and ledger below incorporate that explicit revision request.

| Order | Internal role | Student-facing heading | Speaker note |
|---|---|---|---|
| 1 | Required core map | Co musí být rozumné, aby lineární model odpovídal na naši otázku? | Consolidate four distinct diagnostic concerns immediately after students learn to read the residual plot. |
| 2 | Visual pattern guide | Čtyři otázky, čtyři různé stopy v grafu | Use deliberately schematic panels to distinguish no obvious contradiction, curvature, changing spread and runs in measurement order; state that they are not pass/fail tests. |
| 3 | Response-residual comparison | Odezva a residua mohou mít jiný tvar | Compare the actual iris response and model residual histograms to make the normality target visible without introducing a formal test. |
| 4 | Misconception correction | Doplňující: předpoklady se týkají residuí kolem modelu | Correct the common misconception that the raw response or predictor must itself be normally distributed. |
| 5 | Influence preview | Doplňující: odlehlý, krajní a vlivný bod nejsou totéž | Separate three properties conceptually while explicitly withholding thresholds and deletion rules. |

## Knowledge-state ledger

| Concept block | May assume before | Introduced or earned here | Must not assume yet | Evidence or experience |
|---|---|---|---|---|
| Assumption map | Students can compute and plot fitted values and residuals. | Four distinct checks: relation shape, residual spread, residual shape and independence from study design. | Formal normality tests, heteroskedasticity tests, robust SEs, transformations or mixed models. | Use the existing residual plot; consequences for uncertainty unfold in L04-L06, nonlinearity in L10 and dependence in L11. |
| Schematic residual patterns | Students know the axes and zero line of a residual plot. | Curvature, changing spread and ordered runs are visually different warnings; absence of a visible pattern is not proof. | Formal diagnostic tests, thresholds or remedies. | Four deterministic schematic panels, explicitly labelled as reading aids rather than new datasets. |
| Response versus residual distribution | Students know the response, fitted value and residual. | The distribution of the measured response and the distribution of deviations from the model are different objects. | A Q-Q plot, a formal normality test or a pass/fail rule. | Two histograms computed from the current iris data and fitted model. |
| What normality concerns | Students distinguish measured and fitted values. | The response itself need not be normally distributed; the model concerns residual behaviour conditional on predictors. | Proof of exact normality or a pass/fail diagnostic threshold. | Existing iris model and residual histogram. |
| Outlying, extreme and influential observations | Students recognise distant observations. | Large residual, unusual predictor value and strong effect on coefficients are different properties. | Cook-distance thresholds or automatic deletion. | Conceptual distinctions only; Cook's distance appears in L07. |

## Leakage audit

- The core map states validity conditions needed before L04-L05 but does not teach later remedies.
- Diagnostic tests are deliberately excluded; assumptions are treated as graded scientific judgements.

## Review and validation

- Independent amendment review: final cross-lesson re-review found no issue in the new assumptions sequence, figures, knowledge boundaries or glossary wrappers.
- Glossary coverage: rechecked against the local glossary; first occurrences of `odezva`, `histogram` and the newly added `nejistota` wording are wrapped, and the added wrappers use existing slugs with the correct Czech display forms.
- Source checks: UTF-8 without BOM, no replacement characters, `git diff --check` passed.
- Render: project-native HTML and PDF render passed. Visual QA caught and corrected an initial wrong residual-column reference; the final 31-page PDF was inspected through contact sheets, and the affected assumption page was rechecked after the wording fix with no clipping, overlap or broken layout.
- Pre-existing full-artifact review notes outside this amendment: a hardcoded iris row count, several workflow-style headings and an incomplete visible missingness check remain candidates for a later cleanup.
