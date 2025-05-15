---
layout: default
title: Permisije
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>
<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Dozvole, vlasništvo i sigurnost

![rwx figures](../assets/diagrams/rwx_figure.png)

Kada ste isprobali prvi put `ls -l` za izlistavanje sadržaja direktorijuma, primetili ste neku gomilu random karaktera (npr. `-rwxr-xr--`) na početku i tada smo rekli da su to dozvole. U ovoj sekciji ćemo detaljno objasniti značenje svakog karaktera i kako ih možemo menjati i koristiti.

# Značenje skraćenica

Prvo je potrebno preći šta koji karakter označava. Srećom ukoliko pričamo o fajlovima, značenja su slična onima koje srećemo u programskim jezicima kada im pristupamo. Bitno je primetiti njihova značenja za direktorijume.

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