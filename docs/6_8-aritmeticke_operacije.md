<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

### Osnovne aritmetičke operacije
Sintaksa za aritmetičke operacije i čuvanje njihovih vrednosti je malo komplikovanija. Same oznake aritmethičkih operacija su iste, odnosno +,-,*,/,%. Problem dolazi u upotrebi razmaka u zapisu. Bitno je odmah razumeti da je `[` zapravo komanda i iz tog razloga je neophodno voditi računa kada se sme uneti razmak, a kada ne, za razliku od većine programskih jezika.
Sada ćemo proći kroz razne primere ovih kombinacija:

1. `sum=$((1+2))`
Ovo je ispravan način i govori nam da se u varijablu `sum` upisuje **vrednost izraza** 1+2

2. `sum=$(( 1 + 2 ))`
I ovo je ispravan način. Unutar dvostruke zagrade možemo da unosimo razmak kako nam se više sviđa i kako je nama pregledno

3. `sum = $(( 1 + 2 ))` ili `sum= $(( 1 + 2 ))` ili `sum=$ ((1 + 2))`
Ovo su neispravni zapisi i dobićete grešku da komanda ne postoji. U Zavisnosti od zapisa biće ili `syntax error near unexpected token '('` ili `command not found`

Sada možemo da koristimo i naše varijable. Ukoliko znamo da imamo broj u varijabli, možemo pristupiti vrednosti upotrebom `$`. Npr. program za sabiranje dva broj koja unosi korisnik bi izgledao ovako.

```bash
#!/bin/bash

read -p "Unesi prvi sabirak: " prvi
read -p "Unesi drugi sabirak: " drugi
sum=$(( $prvi + $drugi ))
echo "Suma sabiraka $prvi i $drugi je $sum"
```

Isprobavanjem možete primetiti da će ulaz biti prihvaćen bilo koji, ali ukoliko nije prosleđen broj, ponašaće se neočekivano, ili će izbaciti grešku. Kontrola unosa, ostaje na programeru da vodi računa.

#### Zadatak
* Probaj da napišeš skriptu koja će sabrati dva prosleđena parametra

<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_7-read.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_9-if.html" class="button-nav">Sledeća →</a>
  </div>
</div>