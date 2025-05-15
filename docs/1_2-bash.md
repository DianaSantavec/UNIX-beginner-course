---
layout: default
title: Uvod
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

Kako izgleda na pravom sistemu možete videti u [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)

Ukoliko ne koristite inače Codespaces, imate 120 jezgra/sati da ga besplatno koristite. Dovoljno je da napravite mašinu sa dva jezgra. Kada to uradite otvoriće vam se editor i na dnu ćete videti terminal sa pomenutim promptom. Sve vežbe dalje možete raditi u tom terminalu. Kada budete pravili fajlove, videćete ih i u terminalu i sa strane kod editora. Obratite pažnju da neće ostati sačuvani kada ugasite mašinu i da će se mašina sama ugasiti posle nekog vremena ako se ne koristi.

# Kuda dalje?
Sledeće je potrebno razumeti kako izgleda sistem fajlova na Linuks sistemu i isprobati komande za rad sa istim.

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="1_1-bash.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2-filesystem_functions.html" class="button-nav">Sledeća →</a>
  </div>
</div>
