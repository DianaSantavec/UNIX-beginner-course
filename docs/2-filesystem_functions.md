<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

# Sistem datoteka u Linuksu i rad sa njim

Da bi mogli da radimo sa datotekama, potrebno je da razumemo strukturu sistema datoteka. Linuks sistemi koriste EXT4 sistem datoteka i on je stablaste strukture. U korenu je takozvani ```root``` direktorijum u oznaci ```/```. On sadrži ostale direktorijume od kojih ćemo istaći:
  * direktorijum sa izvršnim fajlovima programa ```bin``` i `sbin`
  * root korisnika (administrator sistema sa svim pravima) `root`
  * direktorijum sa drugim korisnicima `home`
Dalje svaki od ovih direktorijuma ima svoje podirektorijume i fajlove. Mi ćemo se fokusirati na `home` direktorijum. `home` direktorijum sadrži po direktorijum za svakog korisnika na sistemu. Svi vaši podaci će se nalaziti u `username` podirektorijumu smeštenom u `home`.

Potrebno je da razumemo zapis putanje ovakvog sistema fajlova. Postoje dva tipa putanja: apsolutna i relativna.

**apsolutna** putanja sadrži celu putanju od korenoge (`/`) direktorijuma do željenog. Na primer, ukoliko želimo da pristupimo Downloads direktorijumu korisnika `tux`, putanja bi izgledala ovako: `/home/tux/Downloads`. Bitno je obratiti pažnju na dve stvari u ovom primeru:
  1. Razdvajanje naziva direktorijuma ima istu oznaku kao i koreni direktorijum `/`, a ne whitespace
  2. Kako je **bash** case-sensitive, `Downloads` i u putanji mora da sadrži veliko slovo `D`. Da je zapisano malim slovom, to bi predstavljalo drugi direktorijum, ukoliko takav postoji.

Na slici se može videti gde se direktorijum `Downloads` nalazi u sistemu datoteka.


Uniks sistemi prate filozofiju "sve je fajl". Tako da komunikacija sa konektovanim uređajima se vrši preko fajlova, razni podaci o procesima su fajlovi, ali i sami direktorijumi. Na slici ispod se nalazi primer gde je direktorijum `ime` otvoren u tekstualnom editoru `vim`. Kao što može da se vidi iz strukture sistema datoteka pored, njegov sadržaj se nalazi u editoru. Jedina razlika koja postoji su dve linije `.` i `..`. Ovo su dva specijalna fajla koji su linkovi, `..` pokazuje na roditeljski direktorijum (osim za root `/` koji nema roditelja) i `.` je pokazivač na samog sebe. 


Sada možemo da skratimo naše putanje, tako što ćemo koristiti `.` i `..`. Putanju do nekog direktorijuma, možemo pisati u odnosu na lokaciju na kojoj se nalazimo. Na primer, ukoliko se nalazimo u direktorijumu `/home/user/Downloads/Video/` i želimo da pristupimo direktorijumu `/home/user/Documents`, u skraćenom zapisu možemo reći samo `../../Documents`. Jedino je bitno da vodimo računa da ukoliko promenimo direktorijum u kom se nalazimo, moramo da ažuriramo i putanju. Ilustracija se nalazi na slici ispod. Ovakav tip zapisa se naziva **relativna** putanja.


Da bi mogli da se krećemo kroz sistem datoteka i radimo sa direktorijumima, potrebno je da objasnimo osnovne komande za rad sa njima. Komanda se sastoji iz imena, opcija i parametara, kao što je prikazano na slici. Uvek je prva reč koja se napiše naziv komande, potom se razmakom odvajaju opcije (ako se prosleđuju) i parametri. Bitno je napomenuti da ukoliko naziv fajla ili direktorijuma ima razmak u sebi, mora se drugačije tretirati i to će biti objašnjeno kasnije. U suprotnom, shell će razmak tumačiti kao razmak između više parametara. Kraj komande, odnosno pokretanje iste se izvršava pritiskanjem enter-a, odnosno unosom nove linije.


Bitne komande za rad sa direktorijumima su:

  * `cd` - promena trenutnog direktorijuma
  * `ls` - izlistati sadržaj direktorijuma
      * `tree` - lepši prikaz, ali se mora dodatno instalirati 
  * `pwd` - ispiši putanju do trenutnog direktorijuma
  * `mv` - premesti
  * `cp` - kopiraj
  * `mkdir` - napravi direktorijum
  * `rm` - obriši

U nastavku ćemo preći jednu po jednu sa objašnjenjima.

## `pwd`

Ovo je jednostavna, ali dosta korisna komanda. U promptu se ne vidi ceo naziv putanje na kojoj se nalazimo. U zavisnosti od konfiguracije, može se menjati, ali nije praktično da stalno stoji cela putanja ispisana, te se često skraćuje da se vide samo prva slova svakako direktorijuma, ili čak da se vidi samo naziv trenutnog. U toku rada, može se desiti da se "izgubimo" i nam treba apsolutna putanja do mesta na kom se nalazimo i za to koristimo komandu `pwd`. Primer ispisa se nalazi na slici. Nije potrebno prosleđivati nikakve opcije za ovu potrebu, iako dodatne postoje neće biti pokrivene ovim kratkim tutorijalom.

## `cd`

Sledeća bitna komanda jeste `cd` (Change the working Direcotry). Ona nam omogućava da se krećemo po sistemu datoteka, odnosno da promenimo trenutni direktorijum u kom se nalazimo. Od parametara, neophodno je proslediti putanju na koju želimo da odemo. Zapis putanje može biti i apsolutni i relativni, samo je bitno da je zapis case-sensitive. Primer nam pokazuje sa komandom pwd gde se nalazimo, potom prelazi u direktorijum `/home/user/Documents/Petnica-rac` i sa komandom pwd potvrđujemo da se zaista proemnio direktorijum u kom se nalazimo.

## `ls`

Sada kada možemo da se krećemo po sistemu datoteka, bitno je da možemo da vidimo šta se od fajlova i direktorijuma nalazi gde u našem sistemu datoteka. Za te potrebe se koristi komanda `ls`. Ona nam služi da izlista sadržaj trenutnog direktorijuma. Od opcija korisne su:
* `-a` - prikaz fajlova čiji naziv počinje sa `.`
* `-l` - prikaz detalja

Od parametara, ova komanda prima putanju do direktorijuma kom treba da se izlistra sadržaj. Ukoliko se ne prosledi parametar, izlistaće sadržaj direktorijuma u kom smo trenutno.

Prvo ćemo preči primer bez opcija i parametara. Kao što se vidi na slici ispod, trenutno se nalazimo u direktorijumu `/home/user/Petnica-rac`. Kada unesemo komandu `ls`, videćemo da se tu nalazi ... kao što se vidi i na slici sistema datoteka, na slici pored.

Ukoliko želimo da vidimo sadržaj direktorijuma `/home/user/Downloads`, to možemo uraditi tako što ćemo sa komandom `cd /home/user/Downloads` ili `cd ../Downloads` promenitit trenutan direktorijum i ponovo uneti komandu `ls`, ili jednostavnije, tako što komandi `ls` prosledimo samo putanju (apsolutnu ili relativnu) do direkotijuma čiji sadržaj želimo da vidimo, kao što je prikazano na slici ispod. 

Možda ste primetili da se sa `ls` ne vide ona dva pokazivača `.` i `..` koji se vide u tekstualnom editoru. Osim njih, većina konfiguracionih fajlova na UNIX sistemima imaju naziv koji počinje sa `.`. Oni su takozvani "sakriveni fajlovi" i da bi ih videli, potrebno je komandi `ls` proslediti opciju `-a`. Primer je dat na slici ispod.

Još jedna pomenuta opcija je `-l`. Ona nam služi da vidimo detalje fajlova i foldera koje izlistavamo. Neki od stvari koje se vide su permisije (biće kasnije objašnjene), korisnik i grupa koji su vlasnici fajla/direktorijuma, veličina, datum i vreme medifikacije i potom naziv. Primer je dat na slici ispod. Ukoliko želite da vidite sve to i za sakrivene fajlove, potrebno je proslediti obe opcije komandi (`ls -l -a /home/user/Downlods`). Ovaj primer prepuštamo čitaocu da proba.


## `cp`

`cp` (CoPy files and directories) komanda služi da prekopiramo fajl ili direktorijum (copy-paste). Ukoliko direktorijum nije prazan, bez opcija, vratiće grešku i neće prekopirati ceo direktorijum. Iz tog razloga se koristi opcija `-r` (rekurzivno). Od parametara prima putanju na kojoj se nalazi direktorijum ili fajl i putanju na koju se kopira. Na primer, ukoliko želimo da prekopiramo direktorijum Downlods (koji ima fajlove u sebi kao što se vidi na slici sistema direktorijuma) u `/home/user/Petnica-rac/` (gde se trenutno nalazimo), komanda bi izgledala ovako: `cp -r /home/user/Downloads .` 

## `rm`

Ovako komanda služi za prisanje fajlova i direktorijuma (ReMove files or directories). Od parametara prima putanju do fajla ili direktorijuma koji želimo da obrišemo. Kada se unese komanda i pritisne enter, bez dodatne provere, fajl na toj putanji će biti obrisan, zato je potreban poseban oprez prilikom unosa parametara. Ukoliko se briše direktorijum, bitno je da se isti prvo napusti, u suprotnom komanda neće raditi.

Isto kao i `cd`, `rm` neće obrisati direktorijum ukoliko nije prazan. Da ovo rešimo, koristi se opcija `-r` (rekurzivno). Ukoliko znamo da je direktorijum prazan i želimo da budemo sigurni da ga nećemo obrisati ako nije, ili da nećemo da obrišemo fajl, može se koristiti opcija `-d`. Sa njom, komanda će se izvršiti samo ako je direktorijum prazan. Postoji i posebna komanda koja radi istu stvar `rmdir`.

Još jedna bitna opcija je `-f` (force). Nekada su fajlovi ili direktorijumi zaštićeni, te će ispisivati upozorenje, ili neće dozvoljavati brisanje bez ove opcije. Ukoliko ste sigurni da želite da obrišete taj fajl, potrebno je proslediti opciju `-f`.

**BITNO** Verovatno ćete naići na komandu `rm -rf /*`. Ona u principu znači da treba da se obriše sve iz `/` direktorijuma, `-r` rekurzivno, uključujući i zaštićene fajlove (`-f`) i time brišete ceo sistem. Danas postoje zaštite od njenog izvršavanja, ali svakako ne treba pokušavati njeno izvršavanje.

*Napomena: U ovom slučaju, skraćenica za opciju **rekurzivno** su se poklopile sa komandom `cp`. Bitno je napomenuti da to NIJE uvek slučaj i da se može desiti da komande imaju istu slovnu skraćenicu za opciju, a drugo značenje, te je bitno obratiti pažnju na to.*

## `mkdir`

## Nazivi sa specijalnim karakterima

Sada je vreme da pokrijemo i ovaj segment, kako da koristimo neke specijalne karaktere u nazivima naših direktorijuma i fajlova. Verovatno već znate, da na Windows sistemu ne možete sve karaktere da koristite za nazive direktorijuma (`<`, `>`, `:`, `"`, `/`, `\`, `|`, `?`, `*`). Slična situacija je i sa UNIX sistemima, samo je lista malo duža, te obuhvata i ` ` (razmak, ili tab), `$`, `&`, `+`, itd. Razlog za to je što ti karakteri imaju specijalnu namenu. Kasnije na predavanju će biti objašnjeno kako se mogu koristiti (ili se ostavlja čitaocu za istraživanje), a sada će se preći kako da koristimo ove specijalne karaktere u nazivu direktorijuma (ili fajla) kada ga pravimo iz temrinala.

Ukoliko želimo da tretiramo specijalne karaktere kao obične, potrebno je staviti `\` ispred njih (to važi i za upotrebu specijalnog kraktera `\`). Tako da ukoliko direktorijum želimo da nazovemo "UNIX vezbe", `mkdir` komanda bi izgledala ovako `mkdir "UNIX\ vezbe` ili `mkdir /home/user/Petnica-rac/UNIX\ vezbe`. Isto važi ukoliko želimo da nazovemo direktorijum `Ovo"je?naziv`, komanda bi izgledala ovako `mkdir Ovo\"je\?naziv`. Ukoliko unesemo samo `mkdir UNIX vezbe`, dobićemo dva direktorijuma. Primeri se mogu videti na slici ispod, a čitaocu se ostavlja da isproba i druge specijalne karaktere.

Za većinu karaktera, situacija može biti prostija (osim za `\`, `"`, `'`). Ukoliko naziv direktorijuma stavimo pod navodnike, specijalne karaktere obuhvaćene njima će tumačiti kao obične karaktere. Ponovo, ukoliko direktorijum želimo da nazovemo "UNIX vezbe", `mkdir` komanda bi izgledala ovako `mkdir "UNIX vezbe` ili `mkdir "/home/user/Petnica-rac/UNIX vezbe"`. Bitno je primetiti da se cela putanja stavlja pod navodnike, ne samo sporni direktorijum (*u većini slučajeva bi radilo i da se samo sporni direktorijum stavi pod navnodnike, ali se ne praktikuje taj pristup*).

## `mv`

Za kraj, ostaje nam komanda `mv` (MoVe files). Služi nam da premestimo fajlove (kao cut-paste) ili da im promenimo ime, tako što ih "prebacimo" iz jednog imena u drugo. Korisna opcija može biti `-v` (verbose) pre parametara jer tada komanda ispiše početnu i krajnju destinaciju fajla, pa je preglednije ukoliko se izvršava puno komandi. Možete isprobati u terminalu. 
Od parametara, `mv` prima početnu destinaciju fajla/direktorijuma koji se pomera i krajnju destinaciju. Ukoliko se u krajnjoj destinaciji ne napiše novi naziv, ostaće istog naziva. Primer premeštanja fajla `primer.txt` iz direktorijuma `/home/user/Downloads` u direktorijum `/home/user/Petnica-rac/UNIX vezbe` bi izgledala ovako `mv /home/user/Downloads/primer.txt /home/user/Petnica-rac/UNIX vezbe/`. Ispis, kao i primer se vide na slici ispod.

Ukoliko želimo samo da promenimo naziv, potrebno je u krajnjoj distanci samo dodati novi naziv. Za prethodni primer, ukoliko želimo fajl da ga preimenujemo u "primer1.txt", komanda bi izgledala ovako `mv /home/user/Downloads/primer.txt /home/user/Petnica-rac/UNIX vezbe/primer1.txt`. Naravno, moguće je i samo preimenovati fajl bez pomeranja tako što je ostatak putanje isti (ili se nalazi u tom direktorijumu) i to se ostavlja čitaocu da proba samostalno. 

## Cheatsheet
Na ovom linku se nalazi kratki cheatsheet sa ovim komandama i još nekim koje ćemo preći kasnije. Koristite ga za reference tokom rada vežbi.


## Primer za vežbu

* Napraviti direktorijum `Hello World`
* Ući u nov direktorijum
* Napraviti poddirektorijum `poddirektorijum`
* Izlistati roditeljski direktorijum
* Izlistati roditeljski direktorijum sa sakrivenim fajlovima
* Obrisati oba direktorijuma jednom komandom

Vežbe možete porkenuti i u [![GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="1-unix.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="3-faster_terminal_navigation.html" class="button-nav">Sledeća →</a>
  </div>
</div>