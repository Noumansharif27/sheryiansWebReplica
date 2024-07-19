// let navSignInBtn = document.querySelector("#nav #sign-in");
// let body = document.querySelector("#body");

// let isSignBtnClicked = 0;

// navSignInBtn.addEventListener("click", () => {
//   body.classList.toggle("light");
// });

let body = document.querySelector("#body");

// Function to apply light or dark mode styles
function setTheme(mode) {
  body.classList.remove("light", "dark"); // Remove existing classes
  body.classList.add(mode); // Add the new class
}

// Check for system preference (prefers-color-scheme)
const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

// Apply initial theme based on system preference
setTheme(prefersDark ? "dark" : "light");

// Add event listener for manual toggle (optional)
let navSignInBtn = document.querySelector("#nav #sign-in");

if (navSignInBtn) {
  // Check if button exists
  navSignInBtn.addEventListener("click", () => {
    let currentMode = body.classList.contains("light") ? "light" : "dark";
    setTheme(currentMode === "light" ? "dark" : "light");
  });
}
