
if (document.getElementById("img4") != null) {
  document.getElementById("img4").addEventListener('mouseover', function(event) {
    console.log("ruby")
    document.getElementById("img4").style.bottom = "" + (Number(Math.random() * (1 - 400) + 1)) + "px",
    document.getElementById("img4").style.left = "" + Number(Math.random() * (1 - 460) + 1) + "px";
  })}


if (document.getElementById("cant_touch_this") != null) {
  document.getElementById("cant_touch_this").addEventListener('mouseover', function(event) {
  console.log("Signup")
  document.getElementById("cant_touch_this").style.bottom = "" + (Number(Math.random() * (1 - 400) + 1)) + "px",
  document.getElementById("cant_touch_this").style.left = "" + Number(Math.random() * (1 - 460) + 1) + "px";
})}