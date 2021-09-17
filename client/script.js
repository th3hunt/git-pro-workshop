console.log("Git Pro: Workshop");

setInterval(function () {
  const q = document.querySelector("#question").value;
  fetch(`http://localhost:5000?q=${q}`)
    .then(res => {
      console.log(res);
      return res.text();
    })
    .then(text => {
      document.querySelector("#answer").textContent = text;
    });
}, 1000);
