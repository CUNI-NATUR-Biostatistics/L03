#----------------------------------------------------------#
#
#       L03 — Lineární model s jedním prediktorem
#                 Praktické cvičení v R
#             Studenti biologie a ekologie
#                       O. Mottl
#                         2026
#
#----------------------------------------------------------#


#----------------------------------------------------------#
# Příprava -----
#----------------------------------------------------------#

#--------------------------------------------------#
## Jak se skriptem pracovat -----
#--------------------------------------------------#

# Skript stáhněte z veřejné stránky lekce L03 na HUBu kurzu:
# https://cuni-natur-biostatistics.github.io/L03/current/code/cviceni.R
# Uložte si jej mezi své studijní soubory. V RStudiu zvolte
# File > Open File, vyberte stažený cviceni.R a otevřete jej
# v panelu se skriptem. Odpovědi zapisujte do své kopie souboru
# a průběžně ji ukládejte pomocí Ctrl + S.
#
# Ve společném praktiku dokončete Hlavní úlohy L03-U01 až L03-U08.
# Úlohy navíc jsou dobrovolné a lze se k nim vrátit při samostudiu.
# Skript spouštějte shora dolů. Jeden příkaz spusťte kurzorem na jeho
# řádku pomocí Ctrl + Enter. U víceřádkového příkazu označte všechny
# jeho řádky a stiskněte Ctrl + Enter. Výsledek se ukáže v Console,
# graf v Plots. Řádky začínající znakem # jsou komentáře a R je nespouští.
# Vlastní kód a slovní odpovědi pište pod „Vaše řešení“.
# Příkazy pište bez #; slovní odpovědi zapisujte na
# komentářové řádky začínající #, aby šel skript znovu spustit.
# Při samostudiu řešte hlavní úlohy ve stejném pořadí.
# Očekávaný výsledek pomáhá zkontrolovat postup; nápovědy čtěte postupně.


#--------------------------------------------------#
## Výsledky učení a návaznost na L02 -----
#--------------------------------------------------#

# Po společné trase dokážete:
# - určit odezvu a prediktor podle biologické otázky;
# - fitovat lm(y ~ x) a vyložit sklon v původních jednotkách;
# - vysvětlit odhadnutou hodnotu a residuum konkrétního jedince;
# - zkontrolovat graf residuí a rozpoznat zbývající vzor;
# - spojit kontrolu dat, graf, model a opatrný biologický závěr.
#
# V L02 jste zkoumali vztah dvou měření na stejném řádku tabulky.
# Bodový graf ukazoval směr a rozptýlení vztahu; korelace jej
# shrnula jedním číslem, ale neurčila změnu odezvy v jejích
# jednotkách při změně prediktoru. Právě tu odhadne přímka.
# Pokud už bezpečně používáte Ctrl + Enter, $, plot() a
# complete.cases(), můžete toto připomenutí přeskočit.


#--------------------------------------------------#
## Technická kontrola -----
#--------------------------------------------------#

# Kosatce jsou v základní instalaci R. Později použijeme stejné
# tučňáky jako v L02; jejich data jsou v balíčku {palmerpenguins}.
# Kontrola nic neinstaluje ani nepřipojuje.
if (
  !requireNamespace(
    package = "palmerpenguins",
    quietly = TRUE
  )) {
  stop(
    "Chybí balíček {palmerpenguins}. Nainstalujte jej podle pokynů kurzu a spusťte skript znovu.",
    call. = FALSE
  )
}

# Pokud pracujete mimo připravené kurzové prostředí, můžete
# jednou spustit v Console tento příkaz a potom skript znovu:
# install.packages(pkgs = "palmerpenguins")


#----------------------------------------------------------#
# Hlavní úlohy -----
#----------------------------------------------------------#

#--------------------------------------------------#
## Jak se mění délka korunního lístku s jeho šířkou? -----
#--------------------------------------------------#

# Dataset iris obsahuje měření 150 květů kosatců. Jeden řádek
# představuje jeden květ, ne jeden druh. Měření pocházejí
# z botanických dat Edgara Andersona, později publikovaných
# Ronaldem Fisherem. Délka i šířka jsou v centimetrech.
# Z původních sloupců vytvoříme tabulku s českými názvy.
data_kosatce <-
  data.frame(
    sirka_listku = iris$Petal.Width,
    delka_listku = iris$Petal.Length,
    druh = iris$Species
  )

head(x = data_kosatce)


#----------------------------------------#
### Úloha | L03-U01 -----
#----------------------------------------#

# Zadání: Zkontrolujte v data_kosatce počet řádků a rozsah hodnot
# sirka_listku a delka_listku. Pro otázku v nadpisu určete,
# která proměnná je prediktor a která odezva. Co představuje
# jeden řádek tabulky a jakou jednotku mají obě měření?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: 150 květů; šířka 0,1–2,5 cm a délka
# 1,0–6,9 cm. Šířka je prediktor, délka odezva; jeden řádek
# je jedno pozorované květové měření.
# Nápověda 1: Otázka se ptá, jak se jedna veličina mění
# s druhou; pořadí ve větě pomůže rozlišit jejich role.
# Nápověda 2: Počet řádků zjistíte nrow(); pro každý číselný
# sloupec použijte range(). Šířku označte jako x, délku jako y.


#--------------------------------------------------#
## Co ukazuje vztah před fitem modelu? -----
#--------------------------------------------------#

# Bodový graf znáte z L02. Každý bod spojí dvě hodnoty
# ze stejného řádku: šířku a délku jednoho květu.


#----------------------------------------#
### Úloha | L03-U02 -----
#----------------------------------------#

# Zadání: Z data_kosatce nakreslete pomocí plot() bodový graf.
# Na vodorovnou osu dejte sirka_listku, na svislou delka_listku;
# obě osy česky popište včetně cm. Předem odhadněte, zda bude
# přímka proložená všemi body stoupat, klesat, nebo být vodorovná.
# Po zobrazení popište směr i rozptýlení bodů.
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Rostoucí oblak 150 bodů s viditelným
# rozptýlením; přímka by měla stoupat. Body neleží přesně
# na jedné přímce.
# Nápověda 1: V jednom svislém řezu mohou mít květy
# různou délku. Odlište rostoucí střed oblaku od jeho šířky.
# Nápověda 2: V plot() použijte x, y, xlab a ylab; pro body
# můžete přidat pch = 16. Oba sloupce vyberte z data_kosatce.


#--------------------------------------------------#
## Přímka převádí šířku na odhad délky -----
#--------------------------------------------------#

# Následující krátká přímka je uměle vytvořený příklad,
# nikoli model odhadnutý z kosatců. Intercept je 1 cm a sklon
# 2 cm délky na 1 cm šířky. Pro šířku 1,5 cm vrátí odhad 4 cm.
vec_sirka_priklad <- c(0.5, 1.0, 1.5)

vec_odhad_priklad <- 1 + 2 * vec_sirka_priklad

vec_odhad_priklad

# U kosatců chceme hodnoty interceptu a sklonu odhadnout z dat.
# Zápis vlevo ~ vpravo v lm() znamená odezva ~ prediktor.


#----------------------------------------#
### Úloha | L03-U03 -----
#----------------------------------------#

# Zadání: Pomocí lm() fitujte model délky korunního lístku
# podle jeho šířky z data_kosatce. Uložte jej jako mod_listky
# a zobrazte oba koeficienty pomocí coef(). Co říká znaménko
# sklonu a o kolik cm se podle modelu v průměru změní
# odhadnutá délka při šířce větší o 1 cm?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Intercept přibližně 1,08 cm a sklon
# přibližně 2,23 cm na 1 cm šířky. Odhadnutá délka roste;
# tento vztah sám neprokazuje příčinu.
# Nápověda 1: Vzorec musí odrážet biologickou otázku:
# odhadujeme délku pomocí šířky, nikoli naopak.
# Nápověda 2: V lm() pojmenujte argumenty formula a data;
# do formula napište delka_listku ~ sirka_listku. Výsledek
# uložte pomocí <- a předejte jej funkci coef().


#--------------------------------------------------#
## Co model odhadl pro jeden květ? -----
#--------------------------------------------------#

# Odhadnutá hodnota leží na přímce. Residuum je naměřená
# hodnota minus odhadnutá hodnota; může být kladné i záporné.
# V umělém příkladu byla při šířce 1,5 cm naměřena délka
# 3,8 cm a přímka odhadla 4 cm. Residuum je -0,2 cm.
3.8 - vec_odhad_priklad[3]


#----------------------------------------#
### Úloha | L03-U04 -----
#----------------------------------------#

# Zadání: Pro první řádek data_kosatce použijte jeho šířku
# a koeficienty mod_listky k výpočtu odhadnuté délky.
# Od naměřené délky odečtěte odhad. Výsledek porovnejte
# s první hodnotou fitted(mod_listky) a resid(mod_listky).
# Je první květ nad přímkou, nebo pod ní?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Při šířce 0,2 cm a naměřené délce
# 1,4 cm je odhad přibližně 1,53 cm a residuum -0,13 cm.
# Naměřený květ leží pod přímkou.
# Nápověda 1: Záporné residuum znamená, že měření
# je menší než odhad; kladné znamená opak.
# Nápověda 2: Z coef(mod_listky) vyberte intercept a sklon,
# spočítejte intercept + sklon * data_kosatce$sirka_listku[1]
# a odečtěte od data_kosatce$delka_listku[1].


#--------------------------------------------------#
## Zůstává ve zbytcích nějaký vzor? -----
#--------------------------------------------------#

# Diagnostický graf má na ose x odhad modelu a na ose y
# odpovídající residuum. V malém umělém příkladu ukáže
# přerušovaná čára nulové residuum.
plot(
  x = c(2, 3, 4),
  y = c(-0.2, 0.1, -0.1),
  xlab = "Odhad (cm)",
  ylab = "Residuum (cm)",
  pch = 16
)

abline(
  h = 0,
  lty = 2
)

# Druh kosatce zůstal mimo model, ale můžeme jej zobrazit
# barvou v diagnostickém grafu. Jména barev odpovídají
# hodnotám ve sloupci druh. Funkce legend() ukáže, která barva
# patří kterému druhu.
barvy_kosatcu <-
  c(
    "setosa" = "darkorange3",
    "versicolor" = "mediumpurple4",
    "virginica" = "cyan4"
  )


#----------------------------------------#
### Úloha | L03-U05 -----
#----------------------------------------#

# Zadání: Z mod_listky vytvořte graf odhadnutých délek
# proti residuím všech 150 květů. Použijte fitted() na ose x,
# resid() na ose y, přidejte přerušovanou nulovou čáru
# a obarvěte body podle data_kosatce$druh pomocí
# barvy_kosatcu. Přidejte legendu druhů a popište osy česky
# v cm. Zůstává v residuích
# nějaká souvislost s druhem? Znamená samotná existence
# nenulových residuí, že model nemá žádnou hodnotu?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Body leží po obou stranách nuly;
# po rozlišení barev je patrná struktura podle druhu.
# Jediná přímka nepostihuje všechno, ale nenulová residua
# očekáváme i u užitečného modelu.
# Nápověda 1: Každá dvojice odhad–residuum musí patřit
# stejnému květu; barva přidává informaci, kterou model nepoužil.
# Nápověda 2: Přiřaďte plot() x = fitted(mod_listky),
# y = resid(mod_listky) a col = barvy_kosatcu[
# as.character(data_kosatce$druh)]. Nulu vyznačte pomocí
# abline(h = 0, lty = 2). Barvy popište pomocí
# legend() s names(barvy_kosatcu) a barvy_kosatcu.

#--------------------------------------------------#
## Souvisí délka ploutve s hmotností tučňáka? -----
#--------------------------------------------------#

# Vracíme se k měřením jednotlivých tučňáků z L02. V tabulce
# je jeden řádek jeden jedinec. Délka ploutve je v mm,
# hmotnost v g. Chybějící hodnoty musíme vyřadit po celých
# řádcích, aby obě měření zůstala spárovaná.
data_tucnaci_raw <- palmerpenguins::penguins

data_mereni_par <-
  data_tucnaci_raw[, c("flipper_length_mm", "body_mass_g")]

head(x = data_mereni_par)


#----------------------------------------#
### Úloha | L03-U06 -----
#----------------------------------------#

# Zadání: V data_mereni_par označte řádky s oběma známými
# měřeními pomocí complete.cases(). Podle nich vytvořte
# data_tucnaci z data_tucnaci_raw a ověřte počet řádků.
# Z data_tucnaci nakreslete bodový graf délky ploutve (mm)
# na ose x a hmotnosti (g) na ose y. Jaký směr vztahu vidíte
# a proč jste ponechali stejné řádky pro obě měření?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: 342 úplných dvojic z 344 řádků;
# rostoucí, ale rozptýlený oblak. Párování chrání údaje
# patřící jednomu jedinci před chybným spojením s jiným.
# Nápověda 1: Každý tučňák tvoří jeden řádek. Při
# odděleném vyřazování hodnot by se dvojice mohly posunout
# a popsat dva různé jedince.
# Nápověda 2: Výsledek complete.cases(data_mereni_par)
# použijte uvnitř hranatých závorek na data_tucnaci_raw,
# za čárkou ponechte všechny sloupce. Pro graf použijte plot().


#--------------------------------------------------#
## O kolik gramů se hmotnost podle modelu mění? -----
#--------------------------------------------------#

# Zápis odezva ~ prediktor má stejný význam jako u kosatců.
# V tomto příkladu se jen mění biologické veličiny a jednotky.


#----------------------------------------#
### Úloha | L03-U07 -----
#----------------------------------------#

# Zadání: Na data_tucnaci fitujte model hmotnosti podle délky
# ploutve. Uložte jej jako mod_ploutve a zobrazte koeficienty.
# Vyložte sklon v g na 1 mm i očekávanou změnu hmotnosti
# při délce ploutve větší o 10 mm. Zkontrolujte rozsah
# pozorovaných délek ploutve a posuďte, zda intercept
# při 0 mm má biologický význam.
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Sklon přibližně 49,7 g/mm,
# tedy přibližně 497 g na 10 mm. Intercept je přibližně
# -5781 g, ale 0 mm leží mimo pozorovaných 172–231 mm;
# zápornou hmotnost proto nevykládáme biologicky.
# Nápověda 1: Sklon má jednotku odezvy na jednotku
# prediktoru. Intercept se vztahuje k nule na ose x;
# smysl této nuly posuzujte podle rozsahu měření.
# Nápověda 2: Ve vzorci lm() použijte body_mass_g ~
# flipper_length_mm a data = data_tucnaci. Rozsah prediktoru
# zjistěte pomocí range(data_tucnaci$flipper_length_mm).


#--------------------------------------------------#
## Co přímka u tučňáků nevystihla? -----
#--------------------------------------------------#


#----------------------------------------#
### Úloha | L03-U08 -----
#----------------------------------------#

# Zadání: Z mod_ploutve nakreslete graf residuí proti
# odhadnutým hmotnostem pro stejných 342 tučňáků; vyznačte
# nulovou čáru a česky popište obě osy v g. Popište rozptyl
# kolem nuly. Napište krátký biologický závěr, který spojí
# kontrolu úplných dvojic, směr a velikost odhadnutého
# vztahu i omezení jednoduché přímky. Dokazuje vztah,
# že delší ploutev způsobuje vyšší hmotnost?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Graf má 342 residuí po obou stranách
# nuly, s viditelnou variabilitou hmotnosti. Model odhaduje
# kladnou asociaci přibližně 49,7 g/mm, nikoli přesnou
# hmotnost každého jedince ani příčinný účinek ploutve.
# Nápověda 1: Diagnostika porovnává odhad modelu s tím,
# co po odečtení odhadu z měření zůstalo.
# Nápověda 2: Do plot() dejte fitted(mod_ploutve) na x
# a resid(mod_ploutve) na y; nulovou čáru přidejte
# abline(h = 0, lty = 2). V závěru uveďte jednotku sklonu.


#----------------------------------------------------------#
# Shrnutí a sebekontrola -----
#----------------------------------------------------------#

# Společná trasa je hotová, pokud vlastními slovy vysvětlíte:
# 1. Jak biologická otázka určí pořadí proměnných v lm(y ~ x)?
# 2. Co znamená sklon u kosatců a v jakých je jednotkách?
# 3. Jak vzniká residuum jednoho květu či tučňáka?
# 4. Co může ukázat graf residuí, co sklon samotný neukáže?
# 5. Proč nevykládáme intercept tučňáků při 0 mm?
# 6. Proč kladný sklon sám nedokazuje příčinný vztah?
# Pokud si nejste jistí, vraťte se k příslušné úloze
# a jejím dvěma nápovědám.


#----------------------------------------------------------#
# Úlohy navíc -----
#----------------------------------------------------------#

# Tyto úlohy jsou dobrovolné. Dvě další dvojice měření
# vám umožní zopakovat celý postup bez nové statistické metody.
# Další dvě úlohy pak procvičují grafy pomocí ggplot2.


#--------------------------------------------------#
## Jiná dvojice měření kosatce -----
#--------------------------------------------------#

# Délka korunního a kališního lístku pochází vždy
# ze stejného květu. Obě měření jsou v centimetrech.
# Nová tabulka zachovává pořadí všech 150 květů z iris.
data_kalich <-
  data.frame(
    delka_korunniho_listku = iris$Petal.Length,
    delka_kalisniho_listku = iris$Sepal.Length
  )

head(x = data_kalich)


#----------------------------------------#
### Úloha navíc | L03-N01 -----
#----------------------------------------#

# Zadání: V data_kalich zkontrolujte počet řádků a zobrazte
# bodový graf délky korunního lístku na ose x proti délce
# kališního lístku na ose y; obě osy česky popište v cm.
# Fitujte lineární model délky kališního lístku podle délky
# korunního a uložte jej jako mod_kalich. Vyložte sklon
# v cm na 1 cm. Nakreslete graf residuí proti odhadům
# s nulovou čárou. Co přímka vystihuje a co zůstává
# mezi jednotlivými květy různé?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: 150 spárovaných květů; rostoucí
# vztah se sklonem přibližně 0,41 cm na 1 cm délky
# korunního lístku. Residua leží po obou stranách nuly;
# jediná přímka neodhadne délku každého květu přesně.
# Nápověda 1: Pořadí proměnných ve vzorci určuje,
# kterou délku odhadujete. Bod v diagnostickém grafu
# stále patří stejnému květu jako v původním grafu.
# Nápověda 2: Použijte nrow(), plot(), lm() a coef().
# Do vzorce dejte delka_kalisniho_listku jako odezvu
# a delka_korunniho_listku jako prediktor; pro diagnostiku
# použijte fitted(), resid() a abline(h = 0, lty = 2).


#--------------------------------------------------#
## Jiná dvojice měření tučňáka -----
#--------------------------------------------------#

# Délku zobáku a hmotnost jste už viděli v L02.
# Nový model znovu vyžaduje kontrolu úplných dvojic;
# počet řádků nepřebírejte bez ověření z jiné otázky.


#----------------------------------------#
### Úloha navíc | L03-N02 -----
#----------------------------------------#

# Zadání: Z data_tucnaci_raw vyberte společně úplné dvojice
# bill_length_mm (délka zobáku v mm) a body_mass_g
# (hmotnost v g) a uložte celé odpovídající řádky jako
# data_tucnaci_zobak. Zkontrolujte jejich počet, nakreslete
# bodový graf a fitujte model hmotnosti podle délky zobáku
# jako mod_zobak. Vyložte sklon v g na 1 mm, nakreslete
# graf residuí proti odhadnutým hmotnostem s nulovou čárou
# a napište opatrný biologický závěr. Co můžete říci
# o souvislosti, aniž byste tvrdili příčinu?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: 342 úplných dvojic; rostoucí,
# rozptýlený vztah se sklonem přibližně 87,4 g/mm.
# Residua ukazují neodhadnutou variabilitu hmotnosti.
# Model popisuje asociaci, ne účinek změny zobáku.
# Nápověda 1: Jeden řádek je jeden tučňák; výběr dvojic
# musí zachovat identitu jedince. Sklon vztáhněte
# k jednotce délky zobáku, ne k ploutvi z hlavní úlohy.
# Nápověda 2: V complete.cases() použijte oba uvedené
# sloupce společně. Ve vzorci lm() dejte body_mass_g
# vlevo a bill_length_mm vpravo; pro druhý graf použijte
# fitted(mod_zobak), resid(mod_zobak) a abline(h = 0).


#--------------------------------------------------#
## Grafy pomocí ggplot2 -----
#--------------------------------------------------#
# Následující úlohy jsou dobrovolné. V L02 jste poznali
# grafy složené z dat, přiřazení proměnných a vrstev v ggplot2.
# Znak + spojuje vrstvy grafu; :: volá funkci přímo z balíčku.
# Všechny níže uvedené grafy používají stejné
# modely a pozorování jako hlavní úlohy. Balíček se pouze
# kontroluje; skript jej sám neinstaluje.
je_ggplot2 <-
  requireNamespace(
    package = "ggplot2",
    quietly = TRUE
  )

if (
  !je_ggplot2
) {
  message(
    "Úlohy L03-N03 a L03-N04 vyžadují balíček {ggplot2}; hlavní úlohy jsou hotové."
  )
}

# Pokud chcete dobrovolné úlohy řešit a balíček chybí,
# můžete jednou spustit v Console:
# install.packages(pkgs = "ggplot2")
# Potom znovu spusťte kontrolu je_ggplot2 výše.


#--------------------------------------------------#
## Stejný model ve vrstvách grafu -----
#--------------------------------------------------#


#----------------------------------------#
### Úloha navíc | L03-N03 -----
#----------------------------------------#

# Zadání: Pokud je_ggplot2 má hodnotu TRUE, zobrazte
# z data_kosatce bodový graf šířky a délky korunního lístku
# v cm pomocí ggplot2. Přidejte přímku pomocí interceptu
# a sklonu z uloženého mod_listky. Porovnejte graf s U02:
# která část zápisu určuje data, osy, body a přímku?
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Stejných 150 bodů a přímka s interceptem
# přibližně 1,08 a sklonem 2,23; nepřibyl nový model ani data.
# Nápověda 1: Bodová vrstva přebírá přiřazení os
# z hlavního grafu; vrstva přímky potřebuje dvě čísla
# nezávisle na jednotlivých řádcích.
# Nápověda 2: Spojte ggplot2::ggplot() s ggplot2::aes(),
# ggplot2::geom_point(), ggplot2::geom_abline() a
# ggplot2::labs(). Intercept a slope vrstvy vezměte z
# coef(mod_listky), ne z dalšího fitu.


#--------------------------------------------------#
## Residua po druzích v jiném zápisu -----
#--------------------------------------------------#


#----------------------------------------#
### Úloha navíc | L03-N04 -----
#----------------------------------------#

# Zadání: Pokud je_ggplot2 má hodnotu TRUE, vytvořte
# datovou tabulku z fitted(mod_listky), resid(mod_listky)
# a data_kosatce$druh. V ggplot2 zobrazte residuum proti
# odhadnuté délce, barvou odlište tři druhy a přidejte
# vodorovnou nulovou čáru. Zachovejte české popisky v cm.
# Porovnejte biologický závěr s U05.
#
# Vaše řešení:
#
#
# Očekávaný výsledek: Stejných 150 residuí a stejná
# struktura podle druhu jako v U05; mění se způsob zápisu
# grafu, nikoli model ani biologický závěr.
# Nápověda 1: Jeden řádek nové tabulky musí spojit odhad,
# residuum a druh stejného květu.
# Nápověda 2: Sestavte data.frame() se třemi sloupci;
# v ggplot2::aes() přiřaďte x, y a colour = druh. Přidejte
# ggplot2::geom_point(), ggplot2::geom_hline(yintercept = 0),
# ggplot2::scale_colour_manual(values = barvy_kosatcu)
# a ggplot2::labs().
