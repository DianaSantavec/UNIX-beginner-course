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
Promena direktorijuma u skripti je moguća upotrebom `cd` komande koju koristimo i inače u terminalu.

Druga opcija je da se koriste `pushd` i `popd` komande. One funkcionišu kao stack, odnosno `pushd` dodaje direktorijum na stack i `popd` uklanja, kao što je prikazano na slici. Tako je lakše da se vrati u direktorijum u kom smo bili.


## Parametri
Kao što sve komande koje smo koristili primaju parametre, tako možemo proslediti parametre i našim skriptama. Radi se na isti način kao i kod komandi, razdvojene razmakom ih upisujemo nakon naziva skripte. Kada želimo da im pristupimo koristimo `$n` gde je `n` redni broj parametra. `$0` je sam naziv skripte, `$1` je prvi parametar, itd. Ukoliko nas interesuje koliko je parametara ukupno prosleđeno, to možemo dobiti sa `$#`. Sve parametre (bez naziva skripte), možemo dobiti i u obliku liste sa `$@`.

Primer, ukoliko želimo da ispišemo prvi parametar skipte, naša skripta bi izgledala ovako:

```bash
#!/bin/bash
echo Prvi parametar je: $1
```
I pokrenuli bi skriptu sa `./ispis_parametra.sh zbunjen`


### Varijable
Način definisanja varijabli je jednostavan, za početak ne piše se tip varijable. Potrebno je samo napisati ime varijable i dodeliti joj vrednost, na primer `ime="Petar"`. Bitno je napomenuti da se **ne** piše razmak oko znaka jednakosti, u suprotnom će vratiti grešku da komanda `ime varijable` nije pronađena, kao što je prikazano na slici ispod.

Bitno je napomenuti da postoje sistemske varijable. Konvencija je da se pišu svim velikim slovima i neke poznate su:
  * `USER` - trenutni korisnik
  * `HOME` - putanja do kućnog direktorijuma trenutnog korisnika
  * `PATH` - lista direktorijuma u kojima se traže izvršne datoteke

Vrednostima svih varijabli se pristupa upotrebom `$`, tako i ovim sistemskim. Ukoliko ispišete `echo $USER` videćete svoje korisničko ime. 

### Učitavaje vrednosti od korisnika
Nije jedini način prosleđivanja ulaznih podataka preko parametara. Komanda `read` nam omogućava da prikupimo ulaz od korisnika. Kao parametri, komandi se prosleđuje jedno ili više imena varijabli u koje treba da smesti vrednost. Ukoliko se prosledi samo jedna varijabla, sav unos do prvok `enter` će biti smešten u jednu varijablu, bez obzira da li je unet neki razmak bez navnodnika. Ukoliko se prosledi više od jedne varijable, ulaz će biti podeljen po razmacima, primeri su dati ispod.
Od opcija, ima dve interesantne `-p` i -`s`. 
  * `-p` nam omogućava da u istoj liniji damo i ispis za korisnika, bez da koristimo i `echo` komandu. Npr. `read -p 'Unesite korisničko ime': var_ime`
  * `-s` služi kada se unosi šifra. Ukoliko ste imali potrebu do sada da unosite svoju šifru u terminlu, verovatno ste primetili da se ništa ne ispisuje, čak ni *. Ukoliko želite takav unos, prosledite ovaj parametar, npr `read -s -p 'Unesite šifru: ' var_password` i nakon pritiska `enter` unos će biti sačuvan u varijabli.


### Osnovne aritmetičke operacije
Sintaksa za aritmetičke operacije i čuvanje njihovih vrednosti je malo komplikovanija. Same oznake aritmethičkih operacija su iste, odnosno +,-,*,/,%. Problem dolazi u upotrebi razmaka u zapisu. Bitno je odmah razumeti da je `[` zapravo komanda i iz tog razloga je neophodno voditi računa kada se sme uneti razmak, a kada ne, za razliku od većine programskih jezika.
Sada ćemo proći kroz razne primere ovih kombinacija:

1. `sum=$((1+2))`
Ovo je ispravan način i govori nam da se u varijablu `sum` upisuje **vrednost izraza** 1+2

2. `sum=$(( 1 + 2 ))`
I ovo je ispravan način. Unutar dvostruke zagrade možemo da unosimo razmak kako nam se više sviđa i kako je nama pregledno

3. `sum = $(( 1 + 2 ))` ili `sum= $(( 1 + 2 ))` ili `sum=$ ((1 + 2))`
Ovo su neispravni zapisi i dobićete grešku da komanda ne postoji. U Zavisnosti od zapisa biće ili `syntax error near unexpected token '('` ili `command not found`

Sada možemo da koristimo i naše varijable. Ukoliko znamo da imamo broj u varijabli, možemo pristupiti vrednosti upotrebom `$`. Npr. program za sabiranje dva broj koja unosi korisnik bi izgledao ovako.

```bash
#!/bin/bash

read -p "Unesi prvi sabirak: " prvi
read -p "Unesi drugi sabirak: " drugi
sum=$(( $prvi + $drugi ))
echo "Suma sabiraka $prvi i $drugi je $sum"
```

Isprobavanjem možete primetiti da će ulaz biti prihvaćen bilo koji, ali ukoliko nije prosleđen broj, ponašaće se neočekivano, ili će izbaciti grešku. Kontrola unosa, ostaje na programeru da vodi računa.

#### Zadatak
* Probaj da napišeš skriptu koja će sabrati dva prosleđena parametra

### Kontrola toka
Za kontrolu toka programa se koristi komanda `if`, kao što ste već i sretali. Ono što je neobično jeste da se operatori `>`, `<`, `==` koriste za poređenje stringova. Za brojeve se koriste opcije:
  * `-gt` - greather then
  * `-lt` - less then
  * `-ge` - greater or equal
  * `-le` - less or equal
  * `-eq` - equal
  * `-ne` - not equal

Sintaksa ima sličan problem kao i aritmetičke operacije, jako je bitno kada i gde se unose razmaci, primer ispravne sintakse je sledeći:
```bash
#!/bin/bash

var=10

if [[ var -gt 5 ]]
then
    echo veca je vrednost od 5
elif [[ var -eq 5 ]]
then
    echo vrednost je 5
else
    echo vrednost je manja od 5
fi
```
Sada možemo preći nekoliko bitnih stvari. Prvo, unutar `[[` nije neophodno pisati `$varijabla`, već je dovoljno proslediti sam naziv (voditi računa o stringovima). Druga bitna stvar je da `if` nema vitičaste zagrade, ili indetaciju, već sve izmeću `then` i `elif` ili `else` ili `fi` potpada pod izraz. `else if` je skraćeno u `elif` i isto ima `then` za početak bloka. `else` nema then i pruža se do kraja `if` izraza koji se označava sa `fi`.

Okej, ovo je puno novih pravila u dve rečenice, probaj samostalno da napišeš skriptu koja će očitati unos korisnika i proveriti da li je korisnik uneo broj 1. Kada ovo savladaš, petlje neće biti problem.

### Petlje
Postoje tri tipa petlji `while`, `until` i `for`. Pomaže da je sintakse liče i jedna na drugu i na `if`, tako da hajde da krenemo.

#### `while`
Prosto, izvršava se dok je uslov **ispunjen**. Za razliku od `if`, početak bloka se označava sa `do` i kraj sa `done`. Ovako bi izgledao jedan `while` blok:

```bash
while [[ uslov ]]
do
    echo hello
done
```

Probaj da napišeš skriptu koja će 5 puta ispisati `hello` na ekran.

#### `until`
Izvršava se dok se uslov **ne ispuni** (više liči na do-while kod programskih jezika). Sintaksa je veoma slična:
```bash
until [[ uslov ]]
do
    echo hello
done
```

Probaj sada da ponovo napišeš skriptu koja će 5 puta ispisati `hello` na ekran, ali upotrebnom `until` komande.

#### `for`

`for` petlja je malo interesantnija, jer ima dva načina zapisa, klasičan bash stil i c stil.

##### `for` bash style
U bash stilu malo odskače od prethodnih petlji sa razlikom da nema zagrade oko uslova:

```bash
for variable in 1 2 3 .. 5
do
    echo "hello $variable"
done
```

`..` se koristi da dopuni niz po pravilu po kom su dati prethodni brojevi. Može se napraviti i lista neparnih brojeva sa `1 3 5 .. 13`. Postoji i kraći zapis za oblasti, npr `{1..5}`.

Upotreba `for` petlje je praktična i kada želimo da iteriramo kroz listu parametara (`$@`). Evo primer kako možemo ispisati sve parametre koji su prosleđeni skripti.

```bash
#!/bin/bash

for parametar in $@
do
  echo -n "$parametar "
  # navodnici su dodati zbog razmaka radi citljivosti
done
```

Probaj da napišeš `for` petlju koja će sabrati sve parametre prosleđene skripti.

##### `for` c style
U ovom slučaju se uslov bukvalno piše kao i u programskom jeziku C, sa razlikom da se koriste dvostruke zagrade:

```bash
for (( i = 0; i < 10; i++ )); do
    echo $i
  done
```

*Bonus: Kod `if`, `while`, `until` i `for` je praktično koristiti i `;` umesto da se `do` (odnosno `then`) upisuje u novi red. Pošto su to isto komande, kompaktniji i ispravan zapis je i ovaj:*

```bash
for variable in list; do
    echo $variable
  done
```

[![Sledeća strana](congratulations.md)](./congratulations.html)

## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)