const r = document.querySelector(':root');

function applyColors(form) {
    setText(form.text.value);
    setBackground(form.bg.value);
    setPrimary(form.primary.value);
    setSecondary(form.secondary.value);
    setAccent(form.accent.value);
}

function setBackground(color) {
    r.style.setProperty("--background-0", color);
}
function setText(color) {
    r.style.setProperty("--text-0", color);
}
function setPrimary(color) {
    r.style.setProperty("--primary-0", color);
}
function setSecondary(color) {
    r.style.setProperty("--secondary-0", color);
}
function setAccent(color) {
    r.style.setProperty("--accent-0", color);
}