# L03 — Lineární model s jedním numerickým prediktorem

**Od biologické otázky k odhadnuté přímce**

Tento repozitář obsahuje třetí lekci kurzu [Biostatistika a plánování ekologických pokusů (MB120P163)](https://cuni-natur-biostatistics.github.io/) vyučovaného na Přírodovědecké fakultě Univerzity Karlovy.

Úplný přehled kurzu, rozvrh, pravidla hodnocení a materiály ostatních lekcí najdete na [veřejném HUBu kurzu](https://cuni-natur-biostatistics.github.io/).

## O této lekci

Jak se mění délka korunního lístku kosatce s jeho šířkou? Třetí lekce převádí vizuální trend z bodového grafu do prvního statistického modelu.

Na datasetu `iris` sestavíme lineární model s jedním numerickým prediktorem. Postupně propojíme biologickou otázku s odezvou, prediktorem, interceptem a sklonem, ukážeme, jak model vytváří odhadnuté hodnoty, a vysvětlíme residua jako rozdíly mezi pozorováním a přímkou.

Fit modelu v R není cílem sám o sobě. Důležité je umět koeficienty interpretovat v biologických jednotkách a pomocí diagnostického grafu zkontrolovat, co jednoduchá přímka v datech nevystihla.

## Výsledky učení

Po prostudování této lekce dokážete:

- převést biologickou otázku na modelovou otázku s jasně určenou odezvou a prediktorem;
- popsat libovolnou přímku pomocí interceptu a sklonu;
- fitovat model `lm(y ~ x)` a interpretovat směr i velikost odhadnutého efektu;
- vypočítat a vysvětlit odhadnutou hodnotu a residuum;
- popsat základní diagnostický graf residuí a rozpoznat v něm možné problémy;
- vysvětlit, proč vynechaná biologická informace, například druh kosatce, může zůstat viditelná v residuích.

## Materiály pro studenty

Následující odkazy vedou vždy na nejnovější schválené vydání L03. Rozpracovaná verze ve větvi `main` může být novější, ale není určena jako závazná studijní verze.

| Materiál | Online verze | PDF |
| --- | --- | --- |
| Skripta | [Číst online](https://cuni-natur-biostatistics.github.io/L03/current/learning/) | [Stáhnout PDF](https://cuni-natur-biostatistics.github.io/L03/current/learning/skripta.pdf) |
| Prezentace | [Otevřít slidy](https://cuni-natur-biostatistics.github.io/L03/current/presentation/) | [Stáhnout PDF](https://cuni-natur-biostatistics.github.io/L03/current/presentation/presentation.pdf) |

Pro navazující praktické cvičení je připraven [R skript ke stažení](https://cuni-natur-biostatistics.github.io/L03/current/code/cviceni.R). Skript obsahuje úlohy a kód, se kterými budete pracovat během praktika.

- [HUB kurzu](https://cuni-natur-biostatistics.github.io/) je hlavní vstup ke všem veřejným studijním materiálům.
- [Moodle kurzu](https://dl2.cuni.cz/course/view.php?id=106) slouží zapsaným studentům pro oznámení, testy, zadání, odevzdávání a individuální výsledky.

## Pro vyučující a správce

### Zdrojové a vyrenderované soubory

- `Learning_materials/skripta.qmd` je zdroj skript; výsledky jsou `Learning_materials/skripta.html` a `Learning_materials/skripta.pdf`.
- `Presentation/presentation.qmd` je zdroj slidů; výsledky jsou `Presentation/presentation.html` a `Presentation/presentation.pdf`.
- `Exercises/cviceni.R` je studentský R skript pro praktické cvičení.
- `R/` obsahuje podporované renderovací a tematické nástroje.
- `theme/` obsahuje synchronizovanou lokální kopii společné vizuální identity kurzu.

### Reprodukovatelné prostředí

Repozitář používá `renv`. Po klonování otevřete `L03.Rproj` a v čerstvé R relaci spusťte:

```r
renv::restore()
renv::status()
```

Kompletní lokální render spustíte podporovaným wrapperem:

```r
source("R/render_all.R")
```

Samostatně lze použít `R/render_skripta.R` nebo `R/render_presentation.R`. Přímé volání `quarto render` obchází synchronizaci sdíleného tématu a nemá se používat pro release render.

### Publikování

`website-release.yml` je explicitní seznam souborů povolených ve veřejném balíčku. Větev `main` vytváří veřejný náhled, zatímco stabilní tag `L03-vMAJOR.MINOR.PATCH-YYYYMMDD` vytváří neměnné vydání a aktualizuje cestu `/L03/current/`. Podrobný publikační postup je v [`WEBSITE_RELEASES.md`](WEBSITE_RELEASES.md).

Před vydáním je nutné zkontrolovat vyrenderované HTML a PDF, úplnost manifestu, provenanci a podmínky použití dat a médií a nepřítomnost neveřejných informací v celém repozitáři.

## Licence

Původní výukový obsah je licencován pod CC BY 4.0 a software pod licencí MIT. Přesné vymezení, doporučená citace a výjimky pro převzatá data, média, fonty, loga a další položky jsou v [`LICENSE.md`](LICENSE.md).
