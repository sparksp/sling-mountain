import { Elm } from "./Main.elm";

const scenariosJson = localStorage.getItem('scenario-save');
const scenarios = scenariosJson ? JSON.parse(scenariosJson) : null;

var app = Elm.Main.init({
    flags: scenarios
});

app.ports.storeScenarios.subscribe(todo => {
    localStorage.setItem('scenario-save', JSON.stringify(todo));
});

window.addEventListener('storage', () => {
    try {
        const todo = window.localStorage.getItem('scenario-save')
        app.ports.loadScenarios.send(JSON.parse(todo))
    } catch (e) {
        console.error(e);
    }
});

document.body.addEventListener('touchstart', function () { }, false);