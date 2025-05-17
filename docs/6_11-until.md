---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">
 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# until
Sledeća petlja je `until`. Ova petlja se izvršava se dok uslov **nije ispunjen**, odnosno dok se uslov **ne ispuni** (više liči na `do-while` kod programskih jezika). Sintaksa je veoma slična `while` petlji:

```bash
until [[ uslov ]]
do
    echo hello
done
```

# Vežba 👷
Pokušaj sada da ponovo napišeš skriptu koja će 5 puta ispisati `hello` na ekran, ali upotrebnom `until` komande.

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: #2c974b; color: white; border-radius: 6px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_10-while.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_12-for.html" class="button-nav">Sledeća →</a>
  </div>
</div>