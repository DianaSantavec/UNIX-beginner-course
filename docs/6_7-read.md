<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

### Učitavaje vrednosti od korisnika
Nije jedini način prosleđivanja ulaznih podataka preko parametara. Komanda `read` nam omogućava da prikupimo ulaz od korisnika. Kao parametri, komandi se prosleđuje jedno ili više imena varijabli u koje treba da smesti vrednost. Ukoliko se prosledi samo jedna varijabla, sav unos do prvok `enter` će biti smešten u jednu varijablu, bez obzira da li je unet neki razmak bez navnodnika. Ukoliko se prosledi više od jedne varijable, ulaz će biti podeljen po razmacima, primeri su dati ispod.
Od opcija, ima dve interesantne `-p` i -`s`. 
  * `-p` nam omogućava da u istoj liniji damo i ispis za korisnika, bez da koristimo i `echo` komandu. Npr. `read -p 'Unesite korisničko ime': var_ime`
  * `-s` služi kada se unosi šifra. Ukoliko ste imali potrebu do sada da unosite svoju šifru u terminlu, verovatno ste primetili da se ništa ne ispisuje, čak ni *. Ukoliko želite takav unos, prosledite ovaj parametar, npr `read -s -p 'Unesite šifru: ' var_password` i nakon pritiska `enter` unos će biti sačuvan u varijabli.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_6-varijable.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_8-aritmeticke_operacije.html" class="button-nav">Sledeća →</a>
  </div>
</div>