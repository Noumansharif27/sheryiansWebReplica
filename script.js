function theme() {
  let body = document.querySelector("#body");

  function setTheme(mode) {
    body.classList.remove("light", "dark"); // Remove existing classes
    body.classList.add(mode); // Add the new class
  }

  // Check for system preference (prefers-color-scheme)
  const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

  // Apply initial theme based on system preference
  setTheme(prefersDark ? "dark" : "light");
}

theme();

let menuBar = document.querySelector("#menu");
let menuButton = document.querySelector("#menu-nav-button");
let navButton = document.querySelector("#nav-button");
let nav = document.querySelector("#nav");
let isMenuOpen = 0;

navButton.addEventListener("click", () => {
  if (isMenuOpen === 0) {
    menuBar.style.right = "0%";
    nav.style.height = "0%";
    isMenuOpen = 1;
  }
  console.log("hay");
});

menuButton.addEventListener("click", () => {
  if (isMenuOpen === 1) {
    menuBar.style.right = "-150%";
    isMenuOpen = 0;
  }
});
