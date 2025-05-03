<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

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


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="4_2-vim.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="4_4-vezbe.html" class="button-nav">Sledeća →</a>
  </div>
</div>