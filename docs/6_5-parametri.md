<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

## Parametri
Kao što sve komande koje smo koristili primaju parametre, tako možemo proslediti parametre i našim skriptama. Radi se na isti način kao i kod komandi, razdvojamo ih razmakom i upisujemo nakon naziva skripte. Kada želimo da im pristupimo unutar skripte, koristimo `$n` gde je `n` redni broj parametra. `$0` je sam naziv skripte, `$1` je prvi parametar, itd. Ukoliko nas interesuje koliko je parametara ukupno prosleđeno, to možemo dobiti sa `$#`. Sve parametre (bez naziva skripte), možemo dobiti i u obliku liste sa `$@`. Kada pređemo petlje, imati parametre u obliku liste će biti veoma korisno.

Primer, ukoliko želimo da ispišemo prvi parametar skipte, naša skripta bi izgledala ovako:

```bash
#!/bin/bash
echo Prvi parametar je: $1
```

Skriptu bi dalje pokrenuli sa komandom `./ispis_parametra.sh zbunjen`, kada joj dodelimo permisiju za izvršavanje.


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_4-promena_direktorijuma.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_6-varijable.html" class="button-nav">Sledeća →</a>
  </div>
</div>