<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

## `pwd`

![Lost](../assets/diagrams/lost_figure.png)

Ovo je jednostavna, ali dosta korisna komanda. U promptu se ne vidi ceo naziv putanje na kojoj se nalazimo. U zavisnosti od konfiguracije, može se menjati, ali nije praktično da stalno stoji cela putanja ispisana, te se često skraćuje da se vide samo prva slova svakako direktorijuma, ili čak da se vidi samo naziv trenutnog. U toku rada, može se desiti da se "izgubimo" i nam treba apsolutna putanja do mesta na kom se nalazimo i za to koristimo komandu `pwd`. Primer ispisa se nalazi na slici. Nije potrebno prosleđivati nikakve opcije za ovu potrebu, iako dodatne postoje neće biti pokrivene ovim kratkim tutorijalom.

<div id="terminal"></div>


<div class="nav-buttons-wrapper">
  <div class="nav-left">
    <a href="2-filesystem_functions.html" class="button-nav">← Prethodna</a>
  </div>
  <div class="nav-right">
    <a href="2_2-cd.html" class="button-nav">Sledeća →</a>
  </div>
</div>



<!-- Učitaj Typed.js -->
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    new Typed("#terminal", {
      strings: [
        "user@users-laptop:$ pwd",
        "/home/petar/Filmovi"
      ],
      typeSpeed: 40,
      showCursor: true
    });
  });
</script>

<style>
  #terminal {
    background: #1e1e1e;
    color: #00ff00;
    font-family: monospace;
    padding: 1rem;
    white-space: pre;
    font-size: 1rem;
    border-radius: 5px;
    margin-top: 1rem;
  }
</style>