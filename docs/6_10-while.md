---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Petlje
Poslednja bitna i fundamentalna stvar kod skripti su petlje. Postoje tri tipa petlji `while`, `until` i `for`, kao što smo sretali i u drugim programskim jezicima. Olakšavajuće je to da sintakse liče i jedna na drugu i na sintaksom `if` komande koju smo upoznali. Prva petlja koju ćemo preći je ... `while`.

# while
Prosto, petlja se izvršava dok je uslov **ispunjen**. Za razliku od `if`, početak bloka se označava sa `do` i kraj sa `done`. Ovako bi izgledao jedan `while` blok:

```bash
while [[ uslov ]]
do
    echo hello
done
```

# Vežba
Probaj da napišeš skriptu koja će 5 puta ispisati `hello` na ekran.

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: #2c974b; color: white; border-radius: 6px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_9-if.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_11-until.html" class="button-nav">Sledeća →</a>
  </div>
</div>