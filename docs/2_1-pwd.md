---
layout: default
title: Rad sa sistemom datoteka
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

 

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

# Ispis trenutne putanje - pwd

![Lost](../assets/diagrams/lost_figure.png)

Ovo je jednostavna, ali dosta korisna komanda. U promptu se ne vidi ceo naziv putanje na kojoj se nalazimo. U zavisnosti od konfiguracije, može se menjati, ali nije praktično da stalno stoji cela putanja ispisana, te se često skraćuje da se vide samo prva slova svakog direktorijuma, ili čak da se vidi samo naziv trenutnog. U toku rada, može se desiti da se "izgubimo" i da nam treba apsolutna putanja do mesta na kom se nalazimo. Za ovo potrebe koristimo komandu `pwd`. Nije potrebno prosleđivati nikakve opcije za ovu potrebu, iako one postoje, neće biti pokrivene ovim kratkim tutorijalom.

Primer ispisa se nalazi u prikazu terminala, a struktura sistema direktorijuma na slici. 

<div id="terminal"></div>

![pwd_figure](../assets/diagrams/pwd_figure.svg)


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="2-filesystem_functions.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2_2-cd.html" class="button-nav">Sledeća →</a>
  </div>
</div>

<script>
  const lines = [
    "user@users-laptop:$ pwd",
    "/home/petar/Filmovi"
  ];

  const terminal = document.getElementById("terminal");
  let lineIndex = 0;

  function typeLine(line, i = 0) {
    if (i < line.length) {
      terminal.innerHTML += line[i];
      setTimeout(() => typeLine(line, i + 1), 40);
    } else {
      terminal.innerHTML += "<br>";
      lineIndex++;
      if (lineIndex < lines.length) {
        setTimeout(() => typeLine(lines[lineIndex]), 500);
      }
    }
  }

  document.addEventListener("DOMContentLoaded", () => {
    typeLine(lines[lineIndex]);
  });
</script>

<style>
  #terminal {
    background: #1e1e1e;
    color: #00ff00;
    font-family: monospace;
    padding: 1rem;
    white-space: pre-wrap;
    font-size: 1rem;
    border-radius: 5px;
    margin-top: 1rem;
    min-height: 150px;
  }
</style>