---
layout: default
title: Rad sa tekstom u fajlovima
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Insert mode

Da bi ostale komande imale smisla, potrebno je da unesemo neki tekst. Da bi se prebacili u **insert mode** potrebno je da unesemo karakter `i` (insert) ili `a` (append) (**bez `:`**) i u donjem levom uglu će se pojaviti tekst `-- INSERT --`. Sada sve što unosimo se pojavljuje u našem editoru i postaje sadržaj fajla. Kada završimo sa kucanjem teksta, potrebno je da se vratimo u **command mode** da bi mogli da ga snimimo, ili da uradimo `undo` ili bilo koju drugu radnju. Insert mode napuštamo pritiskom na dugme `esc` i tada možete primetiti da je nestao `-- INSERT --` iz donjeg levog ugla. Ukoliko želite da uradite `undo`, potrebno je sada u **command mode-u** uneti `:undo` i videćete promene. Ispod se nalazi kratak snimak koji prikazuje kako se pokreće `vim`, `help`, ulazak u `insert mode`, pisanje teksta, `undo` komanda i izlazak (bez čuvanja izmena jer je fajl opet prazan).

<video controls>
  <source src="../assets/diagrams/vim.mp4" type="video/mp4">
  Your browser does not support the video tag.
</video>

Kada na kraju želite da sačuvate izmene, potrebno je uneti `:write ime_fajla` (gde ime fajla ne mora imati ekstenziju u UNIX sistemima, ovo će detaljnije biti objašnjeno na predavanju, za sada samo koristite tako). U slučaju uspešnog upisa u fajl, u donjem levom uglu će se pojaviti ime fajla, `[NEW]` u slučaju novog fajla, broj linija i broj bajtova upisanih u njega.

Ime fajla se može dati i prilikom samog pokretanja editora. Ukoliko kao parametar prosledimo ime fajla, pokušaće da ga otvori i ukoliko ne postoji, kreiraće taj fajl. Naravno, ukoliko u nov fajl se ništa ne doda i ne snimi se, `vim` neće napraviti prazan fajl. Tada za upotrebu `write` komande, nije potrebno navoditi i naziv fajla.

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

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: none; color: none; border-radius: 0px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="4_2-vim.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="4_4-vezbe.html" class="button-nav">Sledeća →</a>
  </div>
</div>