---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 

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

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: #2c974b; color: white; border-radius: 6px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_4-promena_direktorijuma.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_6-varijable.html" class="button-nav">Sledeća →</a>
  </div>
</div>