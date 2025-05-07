---
layout: default
title: Permisije
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

## Promena dozvola
Sada kada znamo šta znače, potrebno je preći i kako možemo da ih menjamo i koristimo. Komanda za promenu dozvola je `chmod` (CHange file MODe bits). Kada se menjaju permisije, potrebno je dati odgvor na 3 pitanja:
  * *Kome* (*whom*) menjamo permisiju?
  `u` (user), korisniku
  `g` (group), grupi
  `o` (other), ostalima
  `a` (all), svima
  Ukoliko izostavimo karakter, podrazumeva se da se menja korisniku.

  * *Šta* (*what*) radimo?
  `-` Uklanjamo dozvolu
  `+` Dajemo dozvolu
  `=` Postavljamo konkretno te permisije, a sve ostale uklanjamo

  * *Koju* permisiju (*which*)? `r`, `w` ili `x`

U nastavku se nalazi nekoliko primera `chmod` komandi sa efektima koje postižu.

Postoji još jedna notacija za menjanje permisija, a to je oktalna. U ovom slučaju, r, w i x se predstavljaju kao stepeni dvojke i koristi se njihova suma da predstavi permisije za korisnika, grupu i ostale. Vrednosti su dodeljene na sledeći način:
  * x = 2^0 = 1
  * w = 2^1 = 2
  * r = 2^2 = 4

U nastavku na slikama se nalaze isti primeri, samo u oktalnom zapisu.


U slučaju da korisnik nema permisije da radi sa fajlom (bilo čita, piše ili pokreće) bash će vratiti gešku `bash: ./test: Permission denied` (Sam tekst greške varira od okruženja koje se koristi).

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="5_2-permisije_razjasnjene.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="5_4-permisije_vezbe.html" class="button-nav">Sledeća →</a>
  </div>
</div>