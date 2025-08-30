const buttons = document.querySelectorAll(".button")
const body = document.body
buttons.forEach((btn) => {
btn.addEventListener("click", (e) => {
const cor = e.target.id
body.style.backgroundColor = cor
//if(cor === "yellow"){
//body.style.background = "yellow"}
//if(cor === "red"){
//body.style.background = "red"}
//if(cor === "blue"){
//body.style.background = "blue"}
//if(cor === "white"){
//body.style.background = "white"}
//if(cor === "gray"){
//body.style.background = "gray"}
//if(cor === "orange"){
//body.style.background = "orange"}
})
})
