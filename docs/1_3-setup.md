---
layout: default
title: Uvod
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<script defer data-domain="dianasantavec.github.io/unix-beginner-course" src="https://unix.psc.vl.ba.node.igorsikuljak.rs:2443/js/script.js"></script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Podešavanje

# GitHub Codespaces

Kako sve ovo izgleda na pravom sistemu možete videti u 
<a href="https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json"
   target="_blank"
   onclick="plausible('codespaces-button-click', { props: { repo: 'UNIX-beginner-course', source: 'github-badge' } })"
   style="display: inline-block; padding: 0px 0px; background-color: none; color: none; border-radius: 0px; text-decoration: none; font-weight: bold;">
  <img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" style="vertical-align: middle; height: 20px;">
</a>

Ukoliko ne koristite inače Codespaces, imate 120 jezgra/sati da ga besplatno koristite i potrebno je samo da napravite GitHub nalog. Dovoljno je da napravite mašinu sa dva jezgra. Kada to uradite otvoriće vam se editor i na dnu ćete videti terminal sa pomenutim promptom. Sve vežbe dalje možete raditi u tom terminalu. Kada budete pravili fajlove, videćete ih i u terminalu i sa strane kod editora. Obratite pažnju da neće ostati sačuvani kada ugasite mašinu i da će se mašina sama ugasiti posle nekog vremena ako se ne koristi. Prednost je što možete da ga koristite na svim uređajima bez problema.

# Server

Možete da koristite i instancu podešenu na serveru. Da bi mu pristupili potrebno je da imate ssh. Ukoliko koristite Linux ili MacOS potrebno je da u terminal unesete ```ssh username@unix.rac.petnica.rs```. Nakon toga, pojaviće vam se polje za password. Username je **ime_prezime** ošišanom latinicom, i šifra je ime i prezime, bez razmaka, malim slovima i ošišanom latinicom. **Obratite pažnju** da se šifra neće ispisivati dok je unosite, čak i u vidu *. Primer: username: petar_petrovic i password: petarpetrovic.

U slučaju da koristite windows, možete skinuti PuTTY (https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html). Kada ga pokrenete, u polje "Host Name (or IP address) unesite ```username@unix.rac.petnica.rs``` (gde username zamenite sa vašim), kliknite na SSH i ```OPEN```. Nakon toga unesite password (objašnjeno gore).

Kada se ulogujete jednom od ovih metoda, šifru možete promeniti tako što unesete `passwd` i potom ispratite uputstvo. *Napomena: Ako promenite šifru, nemojte je zaboraviti jer ne može da se uradi recovery*.

# Lokalno

I na kraju ako želite da sve vežbe radite na svom sistemu, u slučaju da koristite Linux ili MacOS, samo pokrenite aplikaciju `Terminal` i možete dalje pratiti uputstva. U slučaju da koristite Windows, možete da koristite wsl. Ukoliko imate win10 noviju verziju ili win11, dosta je da u powershell unesete ```wsl --install```. Na sledećem linku se nalazi uputstvo i kako da se podesi nalog [Setup wsl](https://learn.microsoft.com/en-us/windows/wsl/install).


# Kuda dalje?
Sledeće je potrebno razumeti kako izgleda sistem fajlova na Linuks sistemu i isprobati komande za rad sa istim.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="1_2-bash.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2-filesystem_functions.html" class="button-nav">Sledeća →</a>
  </div>
</div>
