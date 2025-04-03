settings.focusFirstCandidate = true;
settings.focusAfterClosed = "last";

api.map('F','af');

// set theme
settings.theme = `
.sk_theme {
  font-family: SauceCodePro Nerd Font, Consolas, Menlo, monospace;
  font-size: 10pt;
  background: #f0edec;
  color: #2c363c;
}
.sk_theme tbody {
  color: #f0edec;
}
.sk_theme input {
  color: #2c363c;
}
.sk_theme .url {
  color: #1d5573;
}
.sk_theme .annotation {
  color: #2c363c;
}
.sk_theme .omnibar_highlight {
  color: #ff0000;
}
.sk_theme #sk_omnibarSearchResult {
  background: #cdc4c1;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: #cdc4c1;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: #ceeece;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
