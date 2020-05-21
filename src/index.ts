import { Elm } from "./Main.elm";
import "./assets/css/main.pcss";

const scenariosJson = localStorage.getItem('scenario-save');
const scenarios = scenariosJson ? JSON.parse(scenariosJson) : null;

var app = Elm.Main.init({
    flags: scenarios
});

app.ports.storeScenarios.subscribe(todo => {
    if (todo.completed.length || todo.skipped.length) {
        localStorage.setItem('scenario-save', JSON.stringify(todo));
    }
});

document.body.addEventListener('touchstart', function () { }, false);