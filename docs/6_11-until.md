---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>

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

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_10-while.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_12-for.html" class="button-nav">Sledeća →</a>
  </div>
</div>