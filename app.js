// let navSignInBtn = document.querySelector("#nav #sign-in");
// let body = document.querySelector("#body");

// navSignInBtn.addEventListener("click", () => {
//   body.classList.toggle("light");
// });

let body = document.querySelector("#body");

function setTheme(mode) {
  body.classList.remove("light", "dark"); // Remove existing classes
  body.classList.add(mode); // Add the new class
}

// Check for system preference (prefers-color-scheme)
const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

// Apply initial theme based on system preference
setTheme(prefersDark ? "dark" : "light");
