

document.getElementById("img4").addEventListener('mouseover', function(event) {
  document.getElementById("img4").style.top = "" + (Number(Math.random() * (1 - 400) + 1)) + "px",
  document.getElementById("img4").style.left = "" + Number(Math.random() * (1 - 460) + 1)+ "px";
})

