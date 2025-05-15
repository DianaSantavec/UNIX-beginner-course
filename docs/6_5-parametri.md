---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>
<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Parametri
Kao što sve komande koje smo koristili primaju parametre, tako možemo proslediti parametre i našim skriptama. Radi se na isti način kao i kod komandi, razdvajamo ih razmakom i upisujemo ih nakon naziva skripte. Kada želimo da im pristupimo unutar skripte, koristimo `$n` gde je `n` redni broj parametra. `$0` je sam naziv skripte, `$1` je prvi parametar, itd. Ukoliko nas interesuje koliko je parametara ukupno prosleđeno, to možemo dobiti sa `$#`. Sve parametre (bez naziva skripte), možemo dobiti i u obliku liste sa `$@`. Kada pređemo petlje, imati parametre u obliku liste će biti veoma korisno.

Primer, ukoliko želimo da ispišemo prvi parametar skripte, naša skripta bi izgledala ovako:

```bash
#!/bin/bash
echo Prvi parametar je: $1
```

Skriptu bi dalje pokrenuli sa komandom `./ispis_parametra.sh zbunjen`, kada joj dodelimo dozvolu za izvršavanje.

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_4-promena_direktorijuma.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_6-varijable.html" class="button-nav">Sledeća →</a>
  </div>
</div>