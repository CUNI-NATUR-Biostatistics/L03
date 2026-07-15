# Stage 0 - Scope Lock

## Metadata

- Week: L03
- Date: 2026-07-15
- Author: Ondřej Mottl
- Reviewer: TBD

## Weekly outcomes (mapped)

- Outcome 1: Fitovat lm(y ~ x) a interpretovat směr a velikost efektu.
- Outcome 2: Vysvětlit rezidua a základní diagnostiku alespoň graficky.
- Outcome 3: Převést biologickou otázku na model (odezva a prediktor).

## Inspiration consulted

- Authoring problem to solve: Jak postavit první plně modelovou lekci tak, aby byla datově a biologicky ukotvená.
- Relevant source(s) from `_internal/obecne/nove/biostatistics_course_inspiration_hub.md`: Modern Statistics with R; CUNY Biostatistics book.
- Pattern(s) worth borrowing: Data-first vstup do konceptu, pak pojmenování modelu; těsné propojení grafu a interpretace.
- Pattern(s) explicitly rejected: Tooling-heavy workflow pro studenty; dlouhé technické odbočky.
- Why the selected pattern fits this course: Odpovídá model-first logice kurzu i začátečnickému profilu studentů.

## Concrete student actions (2-4)

1. Nakreslit bodový graf pro vztah mezi jedním prediktorem a odezvou.
2. Fitovat jednoduchý lineární model v R a přečíst směr a velikost koeficientu.
3. Vysvětlit význam rezidua na konkrétním pozorování.
4. Zkontrolovat základní diagnostický graf a popsat, co by signalizovalo problém.

## Out of scope this week

- Formální inferenční testování (detailní CI/p-hodnota) jako hlavní téma.
- Více prediktorů, interakce a porovnání kandidátních modelů.

## Risks and dependencies

- Risk: Lekce sklouzne k výpočtům bez biologické interpretace.
- Dependency: Potvrzení finálního datasetu ve Stage 1.
- Inspiration risk (for example too technical / too workflow-heavy / too test-first): Přenos příliš obecné statistické terminologie bez biologického kontextu.

## Decision

- [x] Scope locked for implementation
- Notes: Scope vychází z L03 v `osnova_lekci.md` a z mapování v `learning_outcomes_cz.md`.
