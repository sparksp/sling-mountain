import { Elm } from "./Main.elm";
import "../assets/css/main.pcss";

var app = Elm.NotFound.Main.init({
    flags: null
});

document.body.addEventListener('touchstart', function () { }, false);