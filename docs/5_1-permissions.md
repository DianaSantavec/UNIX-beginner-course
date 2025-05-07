---
layout: default
title: Permisije
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Dozvole, vlasništvo i sigurnost

![rwx figures](../assets/diagrams/rwx_figure.png)

Kada ste isprobali prvi put `ls -l` za islistavanje fajlova, primetili ste neku gomilu random karaktera (npr. `-rwxr-xr--`) na početku i tada smo rekli da su to permisije. U ovoj sekciji ćemo objasniti detaljno šta koji karakter znači i kako da ih menjate i koristite.

## Značenje skraćenica

Prvo je potrebno preći šta koji karakter označava, srećom ukoliko pričamo o fajlovima, značenja su slična onima koje srećemo u programskim jezicima kada im pristupamo. Bitno je primetiti njihova značenja za direktorijume.
**r**
  * U slučaju fajlova označava da fajl može da se čita
  * Za direktorijume, karakter `r` znači da može da se izlista sadržaj direktorijuma

**w**
  * Za fajlove, ova oznaka znači da fajl može da se piše
  * Kod direktorijuma, ova oznaka znači da može da se radi sa fajlovima koji se nalaze u njemu i da mogu da se menjaju atributi samog direktorijuma

**x**
  * Kada posmatramo u kontekstu fajlova, `x` označava da mogu da se izvrše, odnosno pokrenu
  * U slučaju direktorijuma, značenje je da može da se uđe u direktorijum i da se pristupa fajlovima u njemu

Sada kada znamo šta koji karakter označava, može preći na ceo zapis.

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="4_4-vezbe.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="5_2-permisije_razjasnjene.html" class="button-nav">Sledeća →</a>
  </div>
</div>


## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)