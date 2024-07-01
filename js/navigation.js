// handling the visibility of the mobile navigation
$("#mobile-showMenuBtn").click(() => {
  $("#mobile-menu").slideToggle("fast");
});

//handling the visibility of mobile search input
// const navSearchBtn = document.getElementById("navSearchBtn");
const logoAndSearchInputHolder = document.getElementById(
  "logoAndSearchInputHolder"
);
const closeNavSearchBtn = document.getElementById("closeNavSearchBtn");
// navSearchBtn.addEventListener("click", () => {
//   logoAndSearchInputHolder.classList.toggle("logoAndSearchInputHolderUp");
//   navSearchBtn.style.display = "none";
//   closeNavSearchBtn.style.display = "block";
// });
// closeNavSearchBtn.addEventListener("click", () => {
//   logoAndSearchInputHolder.classList.toggle("logoAndSearchInputHolderUp");
//   // navSearchBtn.style.display = "block";
//   closeNavSearchBtn.style.display = "none";
// });
//handling the visibility of default search input
// ... not yet
// handling the visiblity of mobile navigation
const mobileNavCon = document.getElementById("mobileNavCon");

$("#mobile-showMenuBtn").click(() => {
  $("#mobileNavShadow").fadeIn(300);
  mobileNavCon.style.transition = "300ms ease-in-out";
  $("#mobileNavCon").css("transform", "translateX(calc(100vw - 100%))");
});
$("#mobileNavShadow").click(() => {
  $("#mobileNavShadow").fadeOut(300);

  $("#mobileNavCon").css("transform", "translateX(100vw)");
  setTimeout(() => {
    mobileNavCon.style.transition = "0ms ease-in-out";
  }, 300);
});
$("#closeMobileNavBtn").click(() => {
  $("#mobileNavShadow").fadeOut(300);
  $("#mobileNavCon").css("transform", "translateX(100vw)");
  setTimeout(() => {
    mobileNavCon.style.transition = "0ms ease-in-out";
  }, 300);
});

// handling the visibility of mobile sub navigation items
const mobileExpanMoreMenu = document.querySelectorAll(".mobileExpanMoreMenu");
const mobileMenuToExpand = document.querySelectorAll(".mobileMenuToExpand");

mobileExpanMoreMenu.forEach((event, idx) => {
  event.addEventListener("click", () => {
    $(mobileMenuToExpand[idx]).slideToggle("fast");
    console.log("test");
  });
});

// handling the position of the navigation bar when scrolled
const navigation = document.getElementById("navigation");
window.addEventListener("scroll", () => {
  if (scrollY > 0 && window.innerWidth >= 760) {
    topTinyBarContainer.style.height = "0px";
  } else if (window.innerWidth >= 760) {
    topTinyBarContainer.style.height = "30px";
  }
});
