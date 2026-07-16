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
| `datasets::iris` (délka korunního lístku ~ šířka korunního lístku) | Vysoký | Vysoká | Vysoká | Tři druhy vytvářejí skupinovou strukturu; v L03 ji pouze diagnostikujeme | Keep |
| `datasets::ToothGrowth` (délka odontoblastů ~ dávka vitaminu C) | Vysoký | Vysoká | Střední | Jen tři unikátní hodnoty prediktoru a dva způsoby podání | Reject |
| `datasets::swiss` (plodnost ~ vzdělání) | Střední | Střední | Vysoká | Historická sociální data, konfundování a slabší vazba na biologii | Reject |
| `datasets::trees` (objem kmene ~ obvod kmene) | Vysoký | Vysoká | Nízká pro výklad interceptu | Intercept přibližně -37 leží daleko od dat; zahrnutí x = 0 stlačuje body v grafu | Reject |

## Selected dataset

- Name/source: `datasets::iris` (Anderson 1935; Fisher 1936; vestavěná data v R).
- Response variable: `Petal.Length` (délka korunního lístku v cm).
- Key predictor(s): `Petal.Width` (šířka korunního lístku v cm).
- Why this one is best for this week: Prediktor začíná na 0,1 cm a modelový intercept je přibližně 1,08 cm, tedy uvnitř rozsahu pozorované odezvy. Graf proto může ukázat x = 0 bez zmenšení datového mraku. Dataset zároveň poskytuje dost bodů pro výklad reziduí a základní diagnostiky.

## Minimal data story

- Biological question in one sentence: Jak se mění délka korunního lístku kosatce s rostoucí šířkou?
- First figure idea: Bodový graf `Petal.Length` proti `Petal.Width` s regresní přímkou a osou x začínající v nule.
- Bridge to next lesson: V L04 na stejném modelu přidáme nejistotu odhadu (CI) a interpretaci p-hodnoty.

## Why this dataset matches the project filter

- Supports model-first teaching: Ano, přímo ukazuje `lm(y ~ x)` a dovoluje vizuálně oddělit intercept a sklon.
- Understandable for biology beginners: Ano, obě proměnné jsou jednoduchá morfologická měření ve stejných jednotkách.
- Uses real data appropriately: Ano, jde o publikovaná měření květů tří druhů kosatců.
- Avoids unnecessary tooling or syntax burden: Ano, data jsou dostupná bez dalších balíčků.

## Decision

- [x] Dataset locked for implementation
- Notes: Původně vybraný dataset `trees` byl 2026-07-16 nahrazen datasetem `iris`, protože jeho intercept znemožňoval čitelné zobrazení x = 0. Druh kosatce je v L03 transparentně uveden jako zatím vynechaná struktura a vrací se v diagnostickém grafu.
