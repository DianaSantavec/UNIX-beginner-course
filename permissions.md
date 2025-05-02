# Dozvole, vlasništvo i sigurnost

Kada ste isprobali prvi put `ls -l` za islistavanje fajlova, primetili ste neku gomilu random karaktera (npr. `-rwxr-xr--`) na početku i tada smo rekli da su to permisije. U ovoj sekciji ćemo objasniti detaljno šta koji karakter znači i kako da ih menjate i koristite.

## Značenje skraćenica

Prvo je potrebno preći šta koji karakter označava, srećom ukoliko pričamo o fajlovima, značenja su slična onima koje srećemo u programskim jezicima kada im pristupamo. Bitno je primetiti njihova značenja za direktorijume.
**r**
  * U slučaju fajlova označava da fajl može da se čita
  * Za direktorijume, karakter `r` znači da može da se izlista sadržaj direktorijuma

**w**
  * Za fajlove, ova oznaka znači da fajl može da se piše
  * Kod direktorijuma, ova oznaka znači da može da se radi sa fajlovima koji se nalaze u njemu i da mogu da se menjaju atributi samog direktorijuma

**x**
  * Kada posmatramo u kontekstu fajlova, `x` označava da mogu da se izvrše, odnosno pokrenu
  * U slučaju direktorijuma, značenje je da može da se uđe u direktorijum i da se pristupa fajlovima u njemu

Sada kada znamo šta koji karakter označava, može preći na ceo zapis.

## `-rwxr-xr--`

Prvo je bitno primetiti da ovaj zapis uvek ima 10 karaktera, koji se mogu podeliti u 4 sekcije, kao što je prikazano na slici ispod. 

Prvi karakter nam govori kakav fajl je u pitanju (jer je "sve fajl" po UNIX filozofiji). Najčešće opcije su:
  * `d` - direktorijum
  * `-` - regularni fajl
  * `l` - simbolički link (*Napomena: šta su simbolički linkovi i kako se koriste će biti objašnjeno na predavanju*)

Još neke poznate oznake su:
  * c - character device file
  * b - block devide file
  * s - local socket file
  * p - named pipe
Koje još skraćenice postoje, možete videti na sledećem linku: *https://linuxconfig.org/identifying-file-types-in-linux*

Ostalih 9 karaktera možemo podeliti u 3 seta:
1. set dozvola za vlasnika
2. set dozvola za članove grupe vlasnika
3. set dozvola za ostale

Vlasnik fajla, je korisnik koji ga je napravio. Međutim, svaki put kada se napravi novi korisnik na UNIX sistemu, nastaje i istoimena grupa koja na početku sadrži samo jednog korisnika. Ukoliko korisnik želi da deli neke fajlove sa drugim učesnicima sistema, može ih dodati u ovu grupu i onda menjati pristupne parametre za tu grupu. Bitno je napomenuti da je moguće napraviti i samo grupu, te u nju dodavati korisnike, ali to je druga tema. 

## Promena dozvola
Sada kada znamo šta znače, potrebno je preći i kako možemo da ih menjamo i koristimo. Komanda za promenu dozvola je `chmod` (CHange file MODe bits). Kada se menjaju permisije, potrebno je dati odgvor na 3 pitanja:
  * *Kome* (*whom*) menjamo permisiju?
  `u` (user), korisniku
  `g` (group), grupi
  `o` (other), ostalima
  `a` (all), svima
  Ukoliko izostavimo karakter, podrazumeva se da se menja korisniku.

  * *Šta* (*what*) radimo?
  `-` Uklanjamo dozvolu
  `+` Dajemo dozvolu
  `=` Postavljamo konkretno te permisije, a sve ostale uklanjamo

  * *Koju* permisiju (*which*)? `r`, `w` ili `x`

U nastavku se nalazi nekoliko primera `chmod` komandi sa efektima koje postižu.

Postoji još jedna notacija za menjanje permisija, a to je oktalna. U ovom slučaju, r, w i x se predstavljaju kao stepeni dvojke i koristi se njihova suma da predstavi permisije za korisnika, grupu i ostale. Vrednosti su dodeljene na sledeći način:
  * x = 2^0 = 1
  * w = 2^1 = 2
  * r = 2^2 = 4

U nastavku na slikama se nalaze isti primeri, samo u oktalnom zapisu.


U slučaju da korisnik nema permisije da radi sa fajlom (bilo čita, piše ili pokreće) bash će vratiti gešku `bash: ./test: Permission denied` (Sam tekst greške varira od okruženja koje se koristi).



[![Skripte](scripts.md)](./scripts.html)


## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)