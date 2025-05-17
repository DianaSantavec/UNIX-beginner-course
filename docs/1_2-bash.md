---
layout: default
title: Uvod
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">


<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>


# Unix Shell

![Terminal](../assets/diagrams/temrinal.png)

Ostatak kursa možemo isključiti miša iz računara, jer ćemo učiti komande koje nam omogućavaju rad na računaru. Da bi preveli komande u nešto što računar razume, potreban nam je neki interpreter za komandnu liniju. Komandna linija je ta koja omogućava komunikaciju korisnika sa operativnim sistemom, putem unosa komandi. Upoznaćemo se sa Unix shell-om, (interaktivni command-language i scripting jezikom, interpreterom za komandnu liniju) Ovaj osnovni shell je dostupan i danas, standardizovan je i poznat kao sh (SHell). Češće se koristi novija verzija ```bash``` (Bourne Again SHell) i nju ćemo i mi koristiti. Oba shell-a ispunjavaju standard IEEE POSIX P1003.2/ISO 9945.2 Shell and Tools standard, te kod napisan za njih može da se izvršava na većini UNIX sistema. 

# Terminal
U nastavku teksta, a i dalje u radu ćete sretati pojam **terminal**. Terminal je zapravo komandna linija u koju unosimo bash komande za komunikaciju sa sistemom. 
Bitno je znati da je on case-sensitive, te je bitno da li se komande i nazivi pišu velikim ili malim slovima.
Prvo što ćemo videti kada otvorimo terminal je: ```username@hostname:location$```. Ovo se naziva **prompt** i može da se razlikuje od podešavanja samog sistema, ali standardno izgleda ovako. Delovi prompat-a su sledeći:
  * `username` - ime korisnika
  * `hostname` - ime sistema u koji smo ulogovani
  * `location` - direktorijum u kom se nalazimo
  * `$` - graničnik za kraj prompt-a  

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="1_1-unix.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="1_3-setup.html" class="button-nav">Sledeća →</a>
  </div>
</div>
