<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

## Promena direktorijuma
Promena direktorijuma u skripti je moguća upotrebom `cd` komande koju koristimo i inače u terminalu.

Druga opcija je da se koriste `pushd` i `popd` komande. One funkcionišu kao stack, odnosno `pushd` dodaje direktorijum na stack i `popd` uklanja. Ovo je korisno, zato što nam omogućava da se lakše vratimo u direktorijum u kom smo bili.
Primer: Ukoliko imamo naš sistem datoteka (prikazan na slici ispod) i želimo iz `/home/user` da pristupimo kratko `/home/petar` to možemo uraditi jednostavno sa `pushd /home/petar` (ili da koristimo relativnu putanju) i onda se vraćamo u prethodni direktoijum sa prostim `popd`


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="6_3-hello_world.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="6_5-parametri.html" class="button-nav">Sledeća →</a>
  </div>
</div>