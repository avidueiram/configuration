echo "#!/bin/bash" > cursor-config.sh
echo "\n# Copy settings to cursor" >> cursor-config.sh

cp -r $HOME/Library/Application\ Support/Cursor/User/settings.json cursor-settings.json
cp -r $HOME/Library/Application\ Support/Cursor/User/keybindings.json cursor-keybindings.json
cp -r $HOME/Library/Application\ Support/Cursor/User/snippets cursor-snippets

echo "cp -r cursor-settings.json \$HOME/Library/Application\ Support/Cursor/User/settings.json" >> cursor-config.sh
echo "cp -r cursor-keybindings.json \$HOME/Library/Application\ Support/Cursor/User/keybindings.json" >> cursor-config.sh
echo "cp -r cursor-snippets \$HOME/Library/Application\ Support/Cursor/User/snippets" >> cursor-config.sh

echo "\n# Install extensions to cursor" >> cursor-config.sh

cursor --list-extensions | while read extension; do
    echo "cursor --install-extension $extension" >> cursor-config.sh
done

echo "\necho \"Cursor config installed\"" >> cursor-config.sh