<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

## Parametri
Kao što sve komande koje smo koristili primaju parametre, tako možemo proslediti parametre i našim skriptama. Radi se na isti način kao i kod komandi, razdvojene razmakom ih upisujemo nakon naziva skripte. Kada želimo da im pristupimo koristimo `$n` gde je `n` redni broj parametra. `$0` je sam naziv skripte, `$1` je prvi parametar, itd. Ukoliko nas interesuje koliko je parametara ukupno prosleđeno, to možemo dobiti sa `$#`. Sve parametre (bez naziva skripte), možemo dobiti i u obliku liste sa `$@`.

Primer, ukoliko želimo da ispišemo prvi parametar skipte, naša skripta bi izgledala ovako:

```bash
#!/bin/bash
echo Prvi parametar je: $1
```
I pokrenuli bi skriptu sa `./ispis_parametra.sh zbunjen`


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_4-promena_direktorijuma.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_6-varijable.html" class="button-nav">Sledeća →</a>
  </div>
</div>