---
layout: default
title: Uvod
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

## Unix Shell
Unix shell je interpreter za komandnu liniju. Komandna linija je ta koja omogućava komunikaciju korisnika sa operativnim sistemom, putem unosa komandi. Ovaj osnovni shell je dostupan i danas. Standardizovan je i poznat kao sh (SHell), iako se uglavnom koristi novija verzija ```bash``` (Bourne Again SHell). Oni ispunjavaju standard IEEE POSIX P1003.2/ISO 9945.2 Shell and Tools standard, te kod napisan za njih može da se izvršava na većini UNIX sistema. 
Interaktivni command-language i scripting jezik

## Terminal
U nastavku teksta, a i dalje u radu ćete sretati naziv **Terminal**. Terminal je zapravo komandna linija u koju unosimo bash komande za komunikaciju sa sistemom. 
Bitno je znati da je on case sensitive, te je bitno da li se komande i nazivi pišu velikim ili malim slovima.
Prvo što ćete videti kada otvorite terminal je nešto kao: ```username@hostname:location$```. Ovo se naziva **prompt** i može da se razlikuje od podešavanja samog sistema, ali standardno izgleda ovako. Delovi prompata su sledeći:
  * `username` - ime korisnika
  * `hostname` - ime sistema u koji smo ulogovani
  * `location` - direktorijum u kom se nalazimo
  * `$` - graničnik za kraj prompt-a  

## Pitanja za razmišljanje
* Kako bi se mogla primeniti UNIX filozofija na implementaciju kalkulatora? Šta bi svaki princip predstavljao u takvoj aplikaciji? Koje bi mogućnosti sve imala takva aplikacija i kako bi bila podeljena?

## Kuda dalje?
Sledeće je potrebno razumeti kako izgleda sistem fajlova na Linux sistemu i isprobati komande za rad sa istim.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="1_1-bash.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2-filesystem_functions.html" class="button-nav">Sledeća →</a>
  </div>
</div>


## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)