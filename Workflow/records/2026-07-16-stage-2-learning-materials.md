# Stages 2-3 - Learning Materials and Human Review

## Metadata

- Week: L03
- Date: 2026-07-16
- Author: Ondřej Mottl
- Reviewer: Ondřej Mottl

## Git checkpoint

- Stage group: Stages 2-3 written materials
- Branch: `init`
- Base branch and commit: `main` at `6b7d612`
- `git status --short` reviewed: yes
- Planned pull request: pending
- Legacy exception: L03 was developed before stage-specific Git boundaries were introduced. The initial `init` branch contains repository setup and Stages 0-3, so the first pull request will document this combined scope rather than rewrite existing history.

## Stage 2A - Structural draft

- Section order complete: [x]
- First visual/table included: [x]
- First interpretation prompt included: [x]
- Misconception checkpoint included: [x]
- Bridge to the next concept included: [x]

### Structural draft notes

- Opening biological question: Jak se mění délka korunního lístku kosatce s rostoucí šířkou?
- First data moment: Bodový graf šířky a délky korunního lístku v datasetu `iris`.
- Model-based framing: Přechod od více možných přímek přes intercept a sklon k odhadnutým hodnotám, reziduím a výběru přímky pomocí SSE.

## Stage 2B - Development pass

- Major concept blocks have visual anchors: [x]
- Interpretation prompts expanded: [x]
- Explanatory payoff text improved: [x]
- Transitions revised for self-study readability: [x]
- Glossary markup checked where relevant: [x]

### Development pass notes

- Strongest improvement: Konkrétní výklad odhadnuté délky a residua pro jeden květ před zavedením obecné symboliky.
- Main visual anchors: Kandidátní přímky, samostatné grafy interceptu a sklonu, grafická residua a graf odhadnutých hodnot proti residuím.
- Diagnostic boundary: Druhy kosatců jsou nejprve odhaleny barvou v původních datech a poté v residuích; pokročilejší diagnostické pojmy jsou ponechány navazujícím lekcím.
- Final polish: Klíčové čtecí body byly zvýrazněny tučně nebo kurzívou a bylo doplněno, že residua očekáváme i u užitečného modelu kvůli přirozené biologické variabilitě.

## Stage 3 - Human review gate

- Lesson-vision review completed: [x]
- Glossary-coverage review completed: [x]
- Human review completed: [x]
- Credible findings resolved: [x]
- HTML/PDF rendered and visually checked: [x]
- Reviewer decision: Skripta jsou přijata jako podklad pro tvorbu prezentace.

## Validation notes

- `Rscript R/render_skripta.R` completed successfully for HTML and PDF.
- The 27-page PDF was visually inspected, including detailed checks of the formula, model, residual and closing sections.
- UTF-8 without BOM and absence of U+FFFD replacement characters were verified.
- Remaining render messages concern renv bootstrap, glossary slug concatenation, remote Google Fonts and Typst tabset fallback; they did not prevent output creation and remain release-readiness follow-up items.

## Decision

- [x] Written materials are review-ready
- [x] Human review of written materials is complete
- [x] Stages 2-3 are ready for the initial combined Stages 0-3 pull request
- Notes: The next content branch after this pull request is merged must be a new Stages 4-5 presentation branch created from updated `main`.
