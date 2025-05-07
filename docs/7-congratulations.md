<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<div style="margin-bottom: 1em;">
  <a href="/UNIX-beginner-course/" class="button-nav">⟵ Nazad na početak</a>
</div>

<h1>🎉 Čestitke! 🎉</h1>
<p>Ovim je završena priprema za predavanje na seminaru. Cheatsheet je dostupan na ![ovom linku](../assets/cheat_sheet.pdf). Odmori se i spremi za interesantne vežbe sa ovim stvarima koje smo prešli ovde.</p>

<!-- Include confetti script -->
<canvas id="confetti-canvas" style="position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none;z-index:999;"></canvas>
<script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>
<script>
  // Basic celebration
  confetti({
    particleCount: 150,
    spread: 70,
    origin: { y: 0.6 }
  });

  // Optional: repeat a bit
  setTimeout(() => {
    confetti({
      particleCount: 100,
      spread: 60,
      origin: { y: 0.7 }
    });
  }, 500);
</script>