var buttons = document.getElementsByTagName("button")

function init() {
    alert ('Hi there! Looks like the page loaded! Yay!');
    var buttons = document.getElementsByTagName("button")
buttons[0].addEventListener('click', changeColor,false)
buttons[1].addEventListener('click', changeColor, false)
buttons[2].addEventListener('click', changeColor, false)
buttons[3].addEventListener('click', changeColor, false)
}

function changeColor() {
var colorMe1 = document.getElementById("colorToggle") 
{colorMe1.style.backgroundColor = "skyblue";} 
}