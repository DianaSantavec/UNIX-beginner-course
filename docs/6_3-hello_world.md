---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

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

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_2-pisanje_prazne_skripte.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_4-promena_direktorijuma.html" class="button-nav">Sledeća →</a>
  </div>
</div>