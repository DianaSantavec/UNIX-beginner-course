---
layout: default
title: Skripte
---

<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-Q6NY1G1P9S');
</script>

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Skripta

![bash figure](../assets/diagrams/bash_figure.png)

Skripta je tekstualni fajl koji sadrži komande koje će se izvršavati redom. Svaka linija se ponaša isto kao da smo je zapisali u terminalu. Komentari se označavaju sa `#`, osim u slučaju prve linije u fajlu. Kako smo rekli da je u UNIX-u "sve fajl", mora postojati način da mu objasnimo da je u pitanju skripta, a ne recept za kolače. Ovo radimo tako što u prvoj liniji pišemo **hash-bang** (`#!`) i putanju do programa koji treba da izvršava naš fajl. U slučaju bash skripti to je `/bin/bash` (u root-u u direktorijumu `bin` se nalaze svi sistemski izvršni binarni fajlovi). U slučaju da želimo da npr. koristimo Python, i to možemo tako što pišemo `/bin/python` i onda nema potrebe da kucamo `python main.py`, već možemo direktno da pokrenemo `main.py`. 

Konvencija za ekstenzije skripti je `.sh`. Međutim, kao što smo rekli ekstenzija nije neophodna. Korisno je napisati ekstenziju radi čitljivosti i da bi se posle lakše radilo sa sistemom datoteka. Iz tog razloga je savet da se prati ova konvencija. Npr, možete doći u situaciju da želite svim skriptama u direktorijumu odjednom da dodelite dozvolu za pokretanje. Ukoliko fajlovi imaju ekstenziju, lako je napisati pravilo da se to uradi, u suprotnom, morali bi ručno jedan po jedan da menjate.

Sledeći bitan korak je dodeliti izvršnu dozvolu našoj skripti. To radimo sa komandom `chmod +x ime_skrpte.sh`. Sada kada izlistate, trebalo bi da vidite da imate prava da je pokrenete (u nekim shell-ovima će čak biti i drugačije obojena).

Poslednja bitna stvar pre pisanja koda je razjasniti kako se tačno pokreće fajl. Fajl se pokreće tako što se navodi putanja do njega npr: `/home/user/Petnica_rac/mala_skripta.sh`. Naravno, može se koristiti i relativna putanja, jedino je bitno da ukoliko se željena skripta nalazi u istom direktorijumu u kom se i mi nalazimo da se napiše pokazivač na trenutni direktorijum `./mala_skripta.sh`. Ovo je bitno zato što u suprotnom, sistem traži instaliran program sa istim imenom.

Sada kada znamo sve ovo, vreme je da napišemo najbitniji program svakog programskog jezika.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_1-pokretanje_vise_komandi.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_3-hello_world.html" class="button-nav">Sledeća →</a>
  </div>
</div>