---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Varijable

Osim parametara, korisno nam je da imamo varijable u kojima bi pamtili stvari i unutar same skripte. Način definisanja varijabli je jednostavan, za početak ne definišemo tip varijable. Potrebno je samo da napišemo ime varijable i dodelimo joj vrednost. Na primer `ime="Petar"` je definisanje varijable `ime` i inicijalizovanje iste sa stringom `Petar`. Bitno je napomenuti da se **ne** piše razmak oko znaka jednakosti, u suprotnom će skripta vratiti grešku da komanda `ime varijable` nije pronađena.

Bitno je napomenuti da postoje i sistemske varijable i menjanje vrednosti njima će uticati na rad sistema. Konvencija je da se one pišu svim velikim slovima i neke poznate su:
  * `USER` - trenutni korisnik
  * `HOME` - putanja do kućnog direktorijuma trenutnog korisnika
  * `PATH` - lista direktorijuma u kojima se traže izvršne datoteke

Vrednostima svih varijabli se pristupa upotrebom `$`, tako i ovim sistemskim. Ukoliko ispišete `echo $USER` videćete svoje korisničko ime. U slučaju naše variable `ime`, `echo $ime` će ispisati `Petar` na ekranu.

![razmak u inicijalizaciji varijabli](../assets/diagrams/razmak_definisanje_varijabli.png)

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: #2c974b; color: white; border-radius: 6px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_5-parametri.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_7-read.html" class="button-nav">Sledeća →</a>
  </div>
</div>