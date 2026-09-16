# Stage 4 - Slide Storyboard and Build

## Metadata

- Week: L03
- Date: 2026-07-16
- Author: Ondřej Mottl
- Reviewer: Ondřej Mottl

## Inspiration consulted

- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: CUNY Biostatistics and *Modern Statistics with R*
- Visual or data-storytelling pattern worth borrowing: move from a biological question to a visual pattern, a fitted line, and an interpretation in context
- How the pattern is being adapted to this course's slide rules: one idea per slide, progressive visual reveals, and repeated short student prompts
- What from the source is intentionally not being reused: additional datasets and formal derivations that would compete with the first encounter with linear regression

## Storyboard by concept block

### Block 1
- Prompt: What do the response and predictor tell us in the penguin plot from the previous lesson?
- Evidence reveal: the familiar scatterplot gains a straight-line summary, then the lesson switches to the iris question
- Interpretation: a line can summarize the direction and strength of a numerical relationship
- Bridge/caveat: many lines are possible, so we need a principled way to choose one

### Block 2
- Prompt: Which candidate line describes the flowers best?
- Evidence reveal: intercept, slope, predicted values, and residuals are introduced progressively on the same visual anchor
- Interpretation: smaller residuals mean that a line's predictions are closer to the observed flowers
- Bridge/caveat: squared residuals give one total criterion for comparing candidate lines

### Block 3
- Prompt: How should the fitted slope be interpreted in the biological context?
- Evidence reveal: visible `data.frame()` and `lm()` code, followed by the estimated coefficients
- Interpretation: one centimetre greater petal width is associated with about 2.23 centimetres greater petal length in this dataset
- Bridge/caveat: association alone does not establish causation

### Block 4
- Prompt: What should a useful residual plot look like, and what does a pattern suggest?
- Evidence reveal: the residual plot is first shown without species and then coloured by species
- Interpretation: the remaining structure points to species as an omitted explanatory variable
- Bridge/caveat: model uncertainty and richer models are deferred to the following lesson

## Visual workflow checks

- Text-light slides (no dense walls): [x]
- Staged reveal via fragments/incremental: [x]
- Figures generated locally near slide blocks: [x]
- Immediate interpretation after key visuals: [x]
- Interaction cadence present: [x]

## Slide-role rhythm

- Main interaction slide form used: prediction, multiple choice, pair discussion, and sketching
- Main evidence reveal form used: progressive annotation of one visual anchor, before/after comparisons, and two short parameter-change GIFs with static follow-up frames
- Main interpretation form used: one-sentence biological interpretation immediately after the evidence
- Where the bridge to the next concept happens: after candidate lines, after residual sums, after coefficient interpretation, and after the species-coloured diagnostic

## Risks and fixes

- Visual rhythm risk: repeated scatterplots could feel visually static
- Content pacing risk: fragments and the two animation moments produce 47 exported PDF pages even though several are staged versions of one teaching moment
- Planned fix: alternate prompts, annotated plots, code, interpretation, and recap slides; use fragments to control the live pace; use GIFs only where motion exposes how candidate lines and squared residuals change

## Decision

- [x] Slides ready for review
- Notes: The deck renders successfully and has passed the presentation vision review. Stage 4 was accepted as complete on 2026-07-20 and handed over for human Stage 5 review.

## Issue #5 title-screen retrofit (2026-09-16)

Ondřej Mottl approved sketch A for L03–L06 on 2026-09-16. The first slide of L03 now leads with the existing lesson question, while the original formal topic remains secondary. The next biological or visual hook, learning outcomes, and remaining teaching sequence are unchanged. This title-only retrofit does not rewrite the historical story-map approval or approve the later Issue #6 illustration pass.
