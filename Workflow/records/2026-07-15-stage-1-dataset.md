# Stage 1 - Dataset Decision

## Metadata

- Week: L03
- Date: 2026-07-15
- Author: Ondřej Mottl
- Reviewer: TBD

## Inspiration consulted

- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: CUNY Biostatistics book; Modern Statistics with R.
- Dataset-selection pattern worth borrowing: Jednoduchý biologický příběh s jedním kvantitativním prediktorem a dobře čitelnou osou odezvy.
- What to avoid from those sources: Příliš rozsáhlé datové či workflow odbočky pro první modelovou lekci.

## Candidate comparison

| Candidate | Learning-outcome fit | Interpretability | Buildability | Risks | Keep/Reject |
|---|---|---|---|---|---|
| `datasets::trees` (objem kmene ~ obvod kmene) | Vysoký | Vysoká | Vysoká | Menší ekologický kontext | Keep |
| Palmer Penguins (hmotnost ~ délka zobáku) | Vysoký | Vysoká | Střední | Závislost na externím balíčku | Reject |
| CZSO veřejná data (regionální ekologický indikátor) | Střední | Střední | Nízká pro první draft | Náročnější příprava a čištění | Reject |

## Selected dataset

- Name/source: `datasets::trees` (vestavěná data v R).
- Response variable: `Volume` (objem kmene).
- Key predictor(s): `Girth` (obvod kmene).
- Why this one is best for this week: Umožňuje čistě ukázat převod biologické otázky na `lm(y ~ x)` bez technických bariér.

## Minimal data story

- Biological question in one sentence: Jak se mění objem kmene stromu s rostoucím obvodem kmene?
- First figure idea: Bodový graf `Volume` proti `Girth` s překreslenou regresní přímkou.
- Bridge to next lesson: V L04 na stejném modelu přidáme nejistotu odhadu (CI) a interpretaci p-hodnoty.

## Why this dataset matches the project filter

- Supports model-first teaching: Ano, přímo ukazuje `lm(y ~ x)`.
- Understandable for biology beginners: Ano, proměnné jsou intuitivní.
- Uses real data appropriately: Ano, jde o reálná měření stromů.
- Avoids unnecessary tooling or syntax burden: Ano, data jsou dostupná bez dalších balíčků.

## Decision

- [x] Dataset locked for implementation
- Notes: Pro finální verzi lze zvážit ekologicky bohatší dataset, pokud neporuší jednoduchost L03.
