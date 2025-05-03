<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

### Varijable
Način definisanja varijabli je jednostavan, za početak ne piše se tip varijable. Potrebno je samo napisati ime varijable i dodeliti joj vrednost, na primer `ime="Petar"`. Bitno je napomenuti da se **ne** piše razmak oko znaka jednakosti, u suprotnom će vratiti grešku da komanda `ime varijable` nije pronađena, kao što je prikazano na slici ispod.

Bitno je napomenuti da postoje sistemske varijable. Konvencija je da se pišu svim velikim slovima i neke poznate su:
  * `USER` - trenutni korisnik
  * `HOME` - putanja do kućnog direktorijuma trenutnog korisnika
  * `PATH` - lista direktorijuma u kojima se traže izvršne datoteke

Vrednostima svih varijabli se pristupa upotrebom `$`, tako i ovim sistemskim. Ukoliko ispišete `echo $USER` videćete svoje korisničko ime. 

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_5-parametri.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_7-read.html" class="button-nav">Sledeća →</a>
  </div>
</div>