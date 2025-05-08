---
layout: default
title: Rad sa sistemom datoteka
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

 
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>
<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://plausible.io/js/script.outbound-links.tagged-events.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Kreiranje direktorijuma - mkdir

![mkdir figure](../assets/diagrams/mkdir_figure.png)

`mkdir` je jednostavna komanda koja pravi direktorijum na željenoj putanji. Kao parametar se prosleđuje putanja koja na kraju sadrži naziv direktorijuma koji pravimo. Ukoliko se navede samo naziv direktorijuma, biće napravljen u trenutnom direktorijumu. Bitna napomena je da se komanda neće izvršiti ukoliko ne postoji prosleđena putanja (odnosno ako neki direktorijum u putanji nedostaje).


Međutim, ukoliko želimo da napravimo sve direktorijume koji nedostaju u našoj putanji, to možemo uraditi tako što prosledimo opciju `-p`. Sa ovom opcijom, `mkdir` će napraviti sve roditeljske direktorijume koji nedostaju.

Primer upotrebe `mkdir` komande se može videti u terminalu, a kako se to odražava na sistem direktorijuma se vidi na slici ispod.

<div id="terminal"></div>

![mkdir diagram](../assets/diagrams/mkdir_diagram.svg)

# Nazivi sa specijalnim karakterima

Sada je vreme da pokrijemo i ovaj segment, kako da koristimo neke specijalne karaktere u nazivima naših direktorijuma i fajlova. Verovatno već znate, da na Windows sistemu ne možete sve karaktere da koristite za nazive direktorijuma (`<`, `>`, `:`, `"`, `/`, `\`, `|`, `?`, `*`). Slična situacija je i sa UNIX sistemima, samo je lista malo duža, te obuhvata i `\t` (razmak, ili tab), `$`, `&`, `+`, itd. Razlog za to je što ti karakteri imaju specijalnu namenu. Kasnije na predavanju uživo će biti objašnjeno kako se mogu koristiti (ili se ostavlja čitaocu za istraživanje), a sada će se preći kako da koristimo ove specijalne karaktere u nazivu direktorijuma (ili fajla) kada ga pravimo iz terminala.

Ukoliko želimo da tretiramo specijalne karaktere kao obične, potrebno je staviti `\` ispred njih (to važi i za upotrebu specijalnog karaktera `\`). Tako da ukoliko direktorijum želimo da nazovemo "UNIX vezbe", `mkdir` komanda bi izgledala ovako `mkdir "UNIX\ vezbe` ili `mkdir -p /home/user/Petnica-rac/UNIX\ vezbe`. Isto važi ukoliko želimo da nazovemo direktorijum `Ovo"je?naziv`, komanda bi izgledala ovako `mkdir Ovo\"je\?naziv`. Ukoliko unesemo samo `mkdir UNIX vezbe`, dobićemo dva direktorijuma. Primeri se mogu videti na slici ispod, a čitaocu se ostavlja da isproba i druge specijalne karaktere.

Za većinu karaktera, situacija može biti prostija (osim za `\`, `"`, `'`). Ukoliko naziv direktorijuma stavimo pod navodnike, specijalne karaktere obuhvaćene njima će tumačiti kao obične karaktere. Ponovo, ukoliko direktorijum želimo da nazovemo "UNIX vezbe", `mkdir` komanda bi izgledala ovako `mkdir "UNIX vezbe` ili `mkdir "/home/user/Petnica-rac/UNIX vezbe"`.

![nazivi sa specijalnim karakterima](../assets/diagrams/nazivi_sa_specijalnim_karakterima.png)

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="2_5-rm.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2_7-mv.html" class="button-nav">Sledeća →</a>
  </div>
</div>


<script>
  const lines = [
    "user@users-laptop:$ pwd",
    "/home/user",
    "user@users-laptop:$ ls",
    "mov.mp4",
    "user@users-laptop:$ mkdir Filmovi",
    "user@users-laptop:$ ls",
    "Filmovi/   mov.mp4"
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