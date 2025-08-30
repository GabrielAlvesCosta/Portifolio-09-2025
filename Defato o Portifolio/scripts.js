    function toggleMenu() {
      document.getElementById("contactMenu").classList.toggle("show");
    }

    // Close if clicking outside
    window.onclick = function(event) {
      if (!event.target.matches('button')) {
        document.getElementById("contactMenu").classList.remove("show");
      }
    }