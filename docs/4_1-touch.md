---
layout: default
title: Rad sa tekstom u fajlovima
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">
 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>


<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Kreiranje i prikazivanje fajlova bez tekstualnog editora

![touch figure](../assets/diagrams/touch_figure.png)

Pre nego što pređemo na upotrebu tekstualnog editora, korisno je napomenuti da se prazan fajl može napraviti i upotrebom komande `touch` i prikazati upotrebom komande `cat`. Kao parametar, obe komande primaju putanju do fajla, odnosno gde on treba da se nalazi. Primer je prikazan na slici ispod.

*Napomena: komanda `cat` može i da popuni sadržaj fajla, ali to se ostavlja čitaocu da istraži.*

![touch i cat](../assets/diagrams/touch_i_cat.png)

<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: none; color: none; border-radius: 0px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="3-faster_terminal_navigation.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="4_2-vim.html" class="button-nav">Sledeća →</a>
  </div>
</div>