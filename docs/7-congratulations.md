<link rel="stylesheet" href="/UNIX-beginner-course/assets/css/custom.css">

<h1>🎉 Čestitke! 🎉</h1>
<p>Ovim je završena priprema za seminar. Cheatsheet je dostupan ovde, i spremi se za interesantne vežbe sa ovim znanjem</p>

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