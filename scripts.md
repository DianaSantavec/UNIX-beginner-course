# Pokretanje više komandi

Kako je sada pređeno već više komandi, javlja se potreba da možemo da pokrećemo više komandi više puta. Da se ne bi kretali stalno kroz istoriju, ili ih ponovo unosili, možemo koristiti `;` ili `&&` da pokrenemo više komandi odjednom. Razlika između ove dve komande je u tome da li nam je potrebno da se izvrše sve komande u sekvenci ukoliko dođe do greške u jednoj od njih.

`;` nam omogućava da bez obzira na to da li se desila greška, se sve komande izvrše. Zapis linije u tom slučaju je `komanda1 ; komanda2 ; komanda3`. 
Za razliku od prethodnog slučaja, `&&` će prekinuti izvršavanje ukoliko jedna od komandi u sekvenci vrati grešku. Bitno je napomenuti da u tom slučaju će efekat prethodnih komandi **i dalje postojati**. Zapis je `komanda1 && komanda2 && komanda3`.

Primer koji može da nam pokaže razliku je sledeći: Sistem direktorijuma je prikazan na slici. Bitno je napomenuti da direktorijum `proba` ne postoji i da postoji `test_fajl` u trenutnom direktorijumu. Ukoliko želimo da napravimo test_fajl u novom direktorijumu `proba` i da ga odmah obrišemo, ispravna komanda bi bila:
`mkdir proba ; cd proba ; touch test_fajl ; rm test_fajl`. Međutim, ukoliko greškom ne primetimo da direktorijum ne postoji i koristimo `;` za povezivanje komandi, može se desiti da ostanemo greškom bez istoimenog fajla u trenutnom direktorijumu (`cd proba ; touch test_fajl ; rm test_fajl`). 
Kada se rade ovakve stvari, bezbednije je koristiti &&, zato što bi u istoj situaciji i sa istom greškom grupa komandi `cd proba && touch test_fajl && rm test_fajl` vratila grešku i ne bi obrisali pogrešan fajl. Animacija je prikazana ispod

Međutim, ukoliko želimo da uradimo nešto kompleksnije, ovakav zapis nam nije čitljiv, te je potrebno da se upoznamo sa skriptama.

# Skripte
Skripta je tekstualni fajl koji sadrži komande koje će se izvršavati redom. Svaka linija se ponaša isto kao da smo je zapisali u terminalu. Komentari se označavaju sa `#`, osim u slučaju prve linije u fajlu. Kako smo rekli da je po UNIX filozofiji "sve fajl", mora postojati način da mu objasnimo da je u pitanju skripta, a ne recept za kolače. Ovo radimo tako što u prvoj linij pišemo **hash-bang** i putanju do programa koji treba da izvršava naš fajl. U slučaju bash srkipti to je `/bin/bash` (u root-u u direktorijumu bin se nalaze svi sistemski izvršni binarni falovi). U slučaju da želimo da npr. koristimo Python, i to možemo tako što pišemo `/bin/python` i onda nema potrebe da kucamo `python main.py`, već možemo direktno da porkrenemo `main.py`. 

Konvencija za ekstenzije skripti je `.sh`. Međutim, kao što smo rekli ekstenzija nije neophodna. Korisno je napisati je radi čitljivosti korisnika, i posle da bi se laše radilo sa sistemom datoteka, te je savet da se koristi. Npr, možete doći u situaciju da želite svim skriptama u direktorijumu odjednom da dodelite permisiju za pokretanje, ukoliko fajlovi imaju ekstenziju, lako je napisati pravilo da se to uradi. U suprotnom, morali bi ručno jedan po jedan da menjate.

Sledeći bitan korak je dodeliti izvršnu permisiju našoj skripti. To radimo sa komandom `chmod +x ime_skrpte.sh`. Sada kada izlistate, treblo bi da vidite da imate prava da je pokrenete (u nekim shell-ovima će čak biti i drugačije obojena).

Poslednja bitna stvar pre pisanja koda je razjasniti kako se tačno pokreće fajl. Fajl se pokreće tako što se navodi putanja do njega npr: `/home/user/Petnica_rac/mala_skripta.sh`. Naravno, može se koristiti i reklativna putanja, jedino je bitno da ukoliko se željena skripta nalazi u istom direktorijumu u kom se i mi nalazimo da se napiše pokazivač na trenutni direktorijum `./mala_skripta.sh`. Ovo je bitno zato što u suprotnom, sistem traži instaliran program sa istim imenom na sistemu u putanji.

Sada kada znamo sve ovo, vreme je da napišemo najbitniji program svakog programskog jezika.

## Hello world

Komanda za ispis teksta na konzolu je `echo`. Možete je probati i u konzoli. Kao parametar prima tekst koji treba da se ispiše, npr `echo Hello world`. Od opcija najbitnije su `-n` i `-e`.
  * Kako `echo` uvek dodaje novi red na kraju linije, `-n` omogućava da se to ne desi ukoliko postoji potreba. Možete probati u terminalu, videćete da se sa `-n` prompt ispisuje u istom redu kao i tekst koji ste prosledili.
  * `-e` opcija nam omogućava da koristimo *backslash escapes* kao što su: `\t` (tab), `\n` (new line), `\v`(vertical tab), `\r` (carriage return), `\a` (alert (BEL))

Sada ako želimo da napišemo "hello world" program, potrebno je da uradimo sledeće korake:
  * Napravimo novi fajl
  * U prvu liniju upisujemo hash-bang sa putanjom do bash-a
  * U sledeću liniju upisujemo `echo` komandu sa željenim tekstom
  * Sačuvamo fajl
  * Dodelimo permisiju za izvršavanje (upotrebom `chmod` komande)
  * I na kraju pokrenemo navodeći putanju (ili `./` ime skripte ako se nalazimo u tom direktorijumu)

```bash
#!/bin/bash
echo -e Hello \t world
```
```chmod +x skripta.sh ; ./skripta.sh```

## Promena direktorijuma



## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)