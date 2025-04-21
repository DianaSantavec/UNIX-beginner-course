# Uvod

## Šta je UNIX i gde je tu Linuks?

Unix je operativni sistem nastao 1960-ih godina. Bio je prvi portabilan operativni sistem pisan u programskom jeziku C, što je omogućavalo da se isti kod izvršava na više različitih računara.

Sam je zapravo predstavljao više manjih specijalizovanih programa koji rešavaju jedan problem i otud termin Unix filozofije. 

Podstakao je razvoj sličnih sistema, te je nastao i POSIX strandard. 

Prirodno se postavlja pitanje, gde je tu onda Linuks? Linuks je zapravo GNU softver (GNU's not Unix) sa Linuks kernelom. Kernel predstavlja.... Linuks je POSIX-compliant te omogućava da se programi mogu pokretati i na drugim UNIX sistemima. Ponekad se pogrešno tumači kada se priča o Linuksu, gde se zapravo misli na pojedinačne distribucije (Ubuntu, Debian, Arch, Mint, itd.), te ne treba primetiti razliku.


## Unix Shell
Unix shell je interpreter za komandnu liniju. Komandna linija je ta koja omogućava komunikaciju korisnika sa operativnim sistemom, putem unosa komandi. Ovaj osnovni shell je dostupan i danas i poznat kao sh (SHell), iako se uglavnom koristi novija verzija ```bash``` (Bourne Again SHell). Oni ispunjavaju standard IEEE POSIX P1003.2/ISO 9945.2 Shell and Tools standard, te kod napisan za njih može da se izvršava na većini UNIX sistema. 
Interaktivni command-language i scripting jezik

## Terminal
U nastavku teksta, a i dalje u radu ćete sretati naziv **Terminal**. Terminal je zapravo komandna linija u koju unosimo bash komande za komunikaciju sa sistemom. 
Bitno je znati da je on case sensitive, te je bitno da li se komande i nazivi pišu velikim ili malim slovima.
Prvo što ćete videti kada otvorite terminal je nešto kao: ```username@hostname:location$```. Ovo se naziva **prompt** i može da se razlikuje od podešavanja samog sistema, ali standardno izgleda ovako. Delovi prompata su sledeći:
  * `username` - ime korisnika
  * `hostname` - ime sistema u koji smo ulogovani
  * `location` - direktorijum u kom se nalazimo
  * `$` - graničnik za kraj prompt-a  

## Kuda dalje?
Sledeće je potrebno razumeti kako izgleda sistem fajlova na Linux sistemu i isprobati komande za rad sa istim.

[![Sledeća strana](filesystem_functions.md)]


## 🚀 Pokreni odmah u Codespaces
[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new/?repo=dianasantavec/UNIX-beginner-course&devcontainer_path=.devcontainer/devcontainer.json)