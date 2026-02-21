// script.js

// Wait until HTML is fully loaded
document.addEventListener("DOMContentLoaded", () => {
  const heading = document.querySelector("h1");

  // Simple interaction
  heading.addEventListener("click", () => {
    heading.textContent = "Clicked! Docker practice is running 🚀";
    heading.style.color = "#27ae60";
  });

  console.log("JS file loaded successfully");
});