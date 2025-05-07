<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

# Skripte
Skripta je tekstualni fajl koji sadrži komande koje će se izvršavati redom. Svaka linija se ponaša isto kao da smo je zapisali u terminalu. Komentari se označavaju sa `#`, osim u slučaju prve linije u fajlu. Kako smo rekli da je po UNIX filozofiji "sve fajl", mora postojati način da mu objasnimo da je u pitanju skripta, a ne recept za kolače. Ovo radimo tako što u prvoj linij pišemo **hash-bang** i putanju do programa koji treba da izvršava naš fajl. U slučaju bash srkipti to je `/bin/bash` (u root-u u direktorijumu bin se nalaze svi sistemski izvršni binarni falovi). U slučaju da želimo da npr. koristimo Python, i to možemo tako što pišemo `/bin/python` i onda nema potrebe da kucamo `python main.py`, već možemo direktno da porkrenemo `main.py`. 

Konvencija za ekstenzije skripti je `.sh`. Međutim, kao što smo rekli ekstenzija nije neophodna. Korisno je napisati je radi čitljivosti korisnika, i posle da bi se laše radilo sa sistemom datoteka, te je savet da se koristi. Npr, možete doći u situaciju da želite svim skriptama u direktorijumu odjednom da dodelite permisiju za pokretanje, ukoliko fajlovi imaju ekstenziju, lako je napisati pravilo da se to uradi. U suprotnom, morali bi ručno jedan po jedan da menjate.

Sledeći bitan korak je dodeliti izvršnu permisiju našoj skripti. To radimo sa komandom `chmod +x ime_skrpte.sh`. Sada kada izlistate, treblo bi da vidite da imate prava da je pokrenete (u nekim shell-ovima će čak biti i drugačije obojena).

Poslednja bitna stvar pre pisanja koda je razjasniti kako se tačno pokreće fajl. Fajl se pokreće tako što se navodi putanja do njega npr: `/home/user/Petnica_rac/mala_skripta.sh`. Naravno, može se koristiti i reklativna putanja, jedino je bitno da ukoliko se željena skripta nalazi u istom direktorijumu u kom se i mi nalazimo da se napiše pokazivač na trenutni direktorijum `./mala_skripta.sh`. Ovo je bitno zato što u suprotnom, sistem traži instaliran program sa istim imenom na sistemu u putanji.

Sada kada znamo sve ovo, vreme je da napišemo najbitniji program svakog programskog jezika.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_1-pokretanje_vise_komandi.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_3-hello_world.html" class="button-nav">Sledeća →</a>
  </div>
</div>