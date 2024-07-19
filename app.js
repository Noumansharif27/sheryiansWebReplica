let navSignInBtn = document.querySelector("#nav #sign-in");
let body = document.querySelector("#body");

let isSignBtnClicked = 0;

navSignInBtn.addEventListener("click", () => {
  body.classList.toggle("light");
});
