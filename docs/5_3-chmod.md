---
layout: default
title: Permisije
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>
<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://plausible.io/js/script.outbound-links.tagged-events.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

## Promena dozvola - chmod
Sada kada znamo šta znače, potrebno je razjasniti i kako možemo da ih menjamo i koristimo. Komanda za promenu dozvola je `chmod` (CHange file MODe bits). Kada se menjaju dozvole, potrebno je dati odgovor na 3 pitanja:
  * *Kome* (*whom*) menjamo dozvolu?
    - `u` (user), korisniku
    - `g` (group), grupi
    - `o` (other), ostalima
    - `a` (all), svima

  Ukoliko izostavimo karakter, podrazumeva se da se menja korisniku.

  * *Šta* (*what*) radimo?
    - `-` Uklanjamo dozvolu
    - `+` Dajemo dozvolu
    - `=` Postavljamo konkretno te dozvole, a sve ostale uklanjamo

  * *Koju* dozvolu (*which*)?
    - `r`
    - `w`
    - `x`

U nastavku se nalazi nekoliko primera `chmod` komandi sa efektima koje postižu.
![chmod slovni](../assets/diagrams/chmod_slova.png)

Postoji još jedna notacija za menjanje dozvola, a to je oktalna. U ovom slučaju, `r`, `w` i `x` se predstavljaju kao stepeni dvojke i koristi se njihova suma da predstavi dozvole za korisnika, grupu i ostale. Vrednosti su dodeljene na sledeći način:
  * x = 2^0 = 1
  * w = 2^1 = 2
  * r = 2^2 = 4

U nastavku na slikama se nalaze primeri u oktalnom zapisu.

![chmod oktalni](../assets/diagrams/chmod_oktalni.png)


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="5_2-permisije_razjasnjene.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="5_4-permisije_vezbe.html" class="button-nav">Sledeća →</a>
  </div>
</div>