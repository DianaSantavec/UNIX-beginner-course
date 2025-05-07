---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Pokretanje više komandi

![multiple commands](../assets/diagrams/multiple_commands_diagram.png)

Kako je sada pređeno već više komandi, javlja se potreba da možemo da pokrećemo više komandi više puta. Da se ne bi kretali stalno kroz istoriju, ili ih ponovo unosili, možemo koristiti `;` ili `&&` da pokrenemo više komandi odjednom. Razlika između ove dve komande je u tome da li nam je potrebno da se izvrše sve komande u sekvenci ukoliko dođe do greške u jednoj od njih.

`;` nam omogućava da bez obzira na to da li se desila greška, se sve komande izvrše. Zapis linije u tom slučaju je `komanda1 ; komanda2 ; komanda3`. 
Za razliku od prethodnog slučaja, `&&` će prekinuti izvršavanje ukoliko jedna od komandi u sekvenci vrati grešku. Bitno je napomenuti da u tom slučaju će efekat prethodnih komandi **i dalje postojati**. Zapis je `komanda1 && komanda2 && komanda3`.

Primer koji može da nam pokaže razliku je sledeći: Sistem direktorijuma je prikazan na slici. Bitno je napomenuti da direktorijum `proba` ne postoji i da postoji `test_fajl` u trenutnom direktorijumu. Ukoliko želimo da napravimo test_fajl u novom direktorijumu `proba` i da ga odmah obrišemo, ispravna komanda bi bila:
`mkdir proba ; cd proba ; touch test_fajl ; rm test_fajl`. Međutim, ukoliko greškom ne primetimo da direktorijum ne postoji i koristimo `;` za povezivanje komandi, može se desiti da ostanemo greškom bez istoimenog fajla u trenutnom direktorijumu (`cd proba ; touch test_fajl ; rm test_fajl`). 
Kada se rade ovakve stvari, bezbednije je koristiti &&, zato što bi u istoj situaciji i sa istom greškom grupa komandi `cd proba && touch test_fajl && rm test_fajl` vratila grešku i ne bi obrisali pogrešan fajl. Animacija je prikazana ispod

Međutim, ukoliko želimo da uradimo nešto kompleksnije, ovakav zapis nam nije čitljiv, te je potrebno da se upoznamo sa skriptama.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="5_4-permisije_vezbe.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_2-pisanje_prazne_skripte.html" class="button-nav">Sledeća →</a>
  </div>
</div>

## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)