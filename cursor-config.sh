#!/bin/bash

# Copy settings to cursor
cp -r cursor-settings.json $HOME/Library/Application\ Support/Cursor/User/settings.json
cp -r cursor-keybindings.json $HOME/Library/Application\ Support/Cursor/User/keybindings.json
cp -r cursor-snippets $HOME/Library/Application\ Support/Cursor/User/snippets

# Install extensions to cursor
cursor --install-extension angular.ng-template
cursor --install-extension dbaeumer.vscode-eslint
cursor --install-extension eenaree.webstorm-new-dark
cursor --install-extension golang.go
cursor --install-extension k--kato.intellij-idea-keybindings
cursor --install-extension mechatroner.rainbow-csv
cursor --install-extension ms-python.debugpy
cursor --install-extension ms-python.python
cursor --install-extension ms-python.vscode-pylance
cursor --install-extension streetsidesoftware.code-spell-checker
cursor --install-extension toba.vsfire
cursor --install-extension tomoki1207.pdf

echo "Cursor config installed"
