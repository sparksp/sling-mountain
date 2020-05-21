import { Elm } from "./Main.elm";
import "./assets/css/main.pcss";

var app = Elm.Main.init({
    node: document.body.appendChild(document.createElement('main')),
    flags: null
});

document.body.addEventListener('touchstart', function () { }, false);