# Brža navigacija u terminalu

Sigurno ste primetili da nakon ovih vežbi ima mnogo više nepotrebnog teksta na terminalu. Da uklonimo taj tekst možemo da koristimo comandu `clear` ili `ctrl + l` (`comand + l` na mac sistemima). Ukolko koristite temrinal emulator (a ne, npr tty), skrolovanjem na gore ćete videti i dalje test koji je bio ispisan. Ukoliko želite i njega da uklonite, koristite komandu `reset`. 

*Napomena: ova komanda nema veze sa resetovanjem sistema, za to se koristi `reboot`.*

Još jedna korisna stvar je `history`. Tu se nalaze sve komande koje ste do sada uneli, ukoliko ih niste započeli sa whitespace karakterom. Vašu istoriju komandi možete i ručno videti u fajlu `/home/user/.bash_history`. 
Ukoliko koristite `bash`, kada unesete komandu `history` videćete i redni broj pored komande. To je korisno zato što referenciranjem tog broja možete ponovo izvršiti tu komandu. To se radi tako što unesete uzvičnik i redni broj komande koju želite da ponovite, npr. `!5`. Ovo je korisno kada je potrebno da se ponove duže komande. Ukoliko želite samo da ponovite poslednju komandu, skraćeno to možete uraditi sa `!!`. Primeri su dati na slici ispod. Takođe, ukoliko samo želite da se krećete kroz istoriju komandi, to možete uraditi pritiskanjem strelice na gore.

Postoje i skraćenice za navigaciju u samoj liniji u terminalu. Na primer, ukoliko želite da se vratite na početak linije, potrebno je uneti `ctrl + a`, ili na kraj sa `ctrl + e`. `ctrl + u` će vam ukloniti celu liniju. 

Još jedna korisna stvar je autocomplete. Kada na primer unosite putanju, možete je autocomplete-ovati pritiskanjem tastera `tab`. Ukoliko postoji više fajlova, ili direktorijuma sa istim početkom naziva, pritisnite dva puta tab da vidite sve opcije.

## Manual

Moguće je instalirati paket manual stranica, koji sadrže opis komande sa svim opcijama koje ona poseduje. Ovaj paket je instaliran, te možete probati i u ovom okruženju. Otvarate ih komandom `man` i kao parametar prosleđujete naziv komande koja vas interesuje. Kao primer možete uneti `man man` da vidite manual page za samu komandu `man`. Da izađete iz iste pritisnite taster `q`.

Kraćoj verziji pomoći se može pristupiti kod većine komandi tako što im se prosledi opcija `-h`, npr `cd -h`.