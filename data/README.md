# Výuková data L03

## Kosatce

`kosatce.csv` obsahuje 150 květů ze zabudované tabulky `datasets::iris` v R 4.5.1. Jeden řádek představuje jeden květ. Skript `R/prepare_l03_data.R` vybírá délku a šířku korunního lístku, délku kališního lístku a druh a převádí názvy proměnných do češtiny. Řádky ani naměřené hodnoty nemění.

Data pocházejí z měření Edgara Andersona (1935), která později použil Fisher (1936), a jsou distribuována v základním balíčku `datasets` jazyka R.

- Oficiální dokumentace a citace datasetu: <https://stat.ethz.ch/R-manual/R-patched/library/datasets/html/iris.html>
- Přesné podmínky distribuce R: <https://stat.ethz.ch/R-manual/R-patched/library/base/html/license.html>
- Opětovné použití: balíček `datasets` je součástí R; R je distribuováno pod GNU General Public License verze 2 nebo 3. Připravený výběr `kosatce.csv` se dále šíří za stejných podmínek GPL-2 nebo GPL-3 se zachováním tohoto záznamu původu a citace.

Převzatá data se neřídí licencí původního výukového textu v kořenovém `LICENSE.md`.

## Palmer Penguins

`palmer_penguins.csv` obsahuje délku zobáku, délku ploutve a tělesnou hmotnost pro všech 344 pozorování z `palmerpenguins::penguins` 0.1.1. Dvě neúplné dvojice délky ploutve a tělesné hmotnosti zůstávají zachovány, aby je studenti vyřadili po celých řádcích; délka zobáku podporuje dobrovolný přenosový úkol L03-N02.

- Dokumentace dat: <https://allisonhorst.github.io/palmerpenguins/reference/penguins.html>
- Archiv a citace balíčku: <https://doi.org/10.5281/zenodo.3960218>
- Podmínky opětovného použití: CC0.

Oba soubory reprodukovatelně vytváří `R/prepare_l03_data.R`.

- SHA-256 souboru `kosatce.csv`: `35beb24550d37dba8596259191151bdb7de9a094a5a28df47d0841de2c0f77b8`
- SHA-256 souboru `palmer_penguins.csv`: `b4341b6ec2431cd0959b0b498c5403698321af96fdeb34768a14d0038813abb1`
