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

## Promena direktorijuma
Promena direktorijuma u skripti je moguća upotrebom `cd` komande koju koristimo i inače u terminalu.

Druga opcija je da se koriste `pushd` i `popd` komande. One funkcionišu kao stack, odnosno `pushd` dodaje direktorijum na stack i `popd` uklanja. Ovo je korisno, zato što nam omogućava da se lakše vratimo u direktorijum u kom smo bili.

Primer na našem sistemu direktorijuma bi bio sledeći. Ukoliko imamo naš sistem datoteka (prikazan na slici ispod) i želimo iz `/home/user` da pristupimo kratko `/home/petar` to možemo uraditi jednostavno sa `pushd /home/petar` (ili da koristimo relativnu putanju) i onda se vraćamo u prethodni direktorijum sa prostim `popd`. 

![pushd example filesystem](../assets/diagrams/pushd_filesystem_diagram.svg)

![pushd](../assets/diagrams/pushd_diagram.svg)
![after pushd](../assets/diagrams/after_pushd_diagram.svg)
![popd](../assets/diagrams/popd_diagram.svg)

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_3-hello_world.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_5-parametri.html" class="button-nav">Sledeća →</a>
  </div>
</div>