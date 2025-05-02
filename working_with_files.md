# Rad sa fajlovima

## Kreiranje fajlova bez tekstualnog editora
Pre nego što pređemo na upotrebu tekstualnog editora, korisno je napomenuti da se prazan fajl može napraviti i upotrebom komande `touch` i prikazati upotrebom komande `cat`. Kao parametar, obe komande primaju putanju do fajla, odnosno gde on treba da se nalazi. Primer je prikazan na slici ispod.

*Napomena: komanda `cat` može i da popuni sadržaj fajla, ali to se ostavlja čitaocu da istraži*

## Vim
**Vim** (VI Improved) je tekstualni editor koji se koristi iz konzolne linije. Postoji i starija verzija `vi`, koja je dostupna bez dodatnih instalacija na sistemima. Komunikaciju sa ovim editorom bez upotrebe miša omogućavaju dva mode-a u kojima radi: command mode i insert mode.

### Command mode
Ovaj mode nam omogućava da izvršavamo tekstualne komande nad tekstom (odnosno fajlom). Neke osnovne komande koje će nam trebati su *undo*, *save*, *quit*, *copy - paste* i pomeranje kurzora.

Onog trenutka kada pokrenete `vim` (unošenjem komande `vim` bez parametara u konzolu), pojaviće se prozor prikazan na slici ispod. Po default-u, `vim` je pokrenut u command mode-u i možemo probati da unesemo prvu komandu. Za tekstualne komande, potrebno je uneti `:` i potom tekst komande. Na primer, za pomoć, unosimo `:help` (pojavljuje se prompt u donjem levom uglu dok kucamo) i kada pritisnemo `enter` dobićemo pomoć. Da izađemo iz ovog prozora potrebno je da unesemo `:quit` (skraćeno `:q`) i vratićemo se na početni prozor. Ukoliko želimo da napustimo editor, potrebno je ponovo uneti komandu `:quit`.

Ako se vratimo u `vim`, možemo primetiti da svaka linija, osnim one u kojoj je kurzor, počinje sa `~`. To je oznaka da ta linija ne postoji zaista u fajlu, čak nema ni prazan red tu.

### Insert mode
Da bi ostale komande imale smisla, potrebno je da unesemo neki tekst. Da bi se prebacili u **insert mode** potrebno je da unesemo karakter `i` (insert) ili `a` (append) (**bez `:`**) i u donjem levom uglu će se pojaviti tekst `-- INSERT --`. Sada sve što unosimo se pojavljuje u našem editoru i postaje sadržaj fajla. Kada završimo sa kucanjem teksta, potrebno je da se vratimo u **command mode** da bi mogli da ga snimimo, ili da uradimo `undo` ili bilo koju drugu radnju. Insert mode napuštamo pritiskom na dugme `esc` i tada možete primetiti da je nestao `-- INSERT --` iz donjeg levog ugla. Ukoliko želite da uradite `undo`, potrebno je sada u **command mode-u** uneti `:undo` i videćete promene. 



Kada na kraju želite da sačuvate izmene, potrebno je uneti `:write ime_fajla` (gde ime fajla ne mora imati ekstenziju u UNIX sistemima, ovo će detaljnije biti objašnjeno na predavanju, za sada samo koristite tako). U slučaju uspešnog upisa u fajl, u donjem levom uglu će se pojaviti ime fajla, `[NEW]` u slučaju novog fajla, broj linija i broj bajtova upisanih u njega.

Ime fajla se može dati i prilikom samog pokretanja editora. Ukoliko kao parametar prosledimo ime fajla, pokušaće da ga otvori i ukoliko ne postoji, kreiraće taj fajl. Naravno, ukoliko u nov fajl se ništa ne doda i ne snimi se, `vim` neće napraviti prazan fajl.

U slučaju velikih fajlova, zamorno je pomerati kurzor karakter po karakter. Postoje skraćenice koje nam omogućavaju da se brže krećemo kroz tekstualni fajl i u nastavku će biti nabrojane neke od njih:
  * `H` - pomeranje kurzora na početak ekrana
  * `L` - pomeranje kurzora na kraj ekrana
  * `w` - pomeranje unapred na početak reči
  * `e` - pomeranje unapred na kraj reči
  * `b` - pomeranje unazad na početak reči
  * `ge` - pomeranje unazad na kraj reči
  * `0` - skok na početak linije
  * `$` - skok na kraj linije
  * `gg` - skok na prvu liniju dokumenta
  * `G` - skok na poslednju liniju dokumenta
  * `dd` - cut trenutne linije
  * `:3,5d` - brisanje linija od 3 do 5

(*Napomena: ne očekuje se za predavanje da znate komande napamet, korisno je i mogu vam pomoći u vežbama da se naviknete na rad sa ovim editorom.*)

## Vežba
* Isprobati kako radi copy-paste


[![Dozvole, vlasništvo i sigurnost](permissions.md)](./permissions.html)