# Load utils
cd ${BASH_SOURCE%/*}
source ../utils/folder_files.sh 
source ../utils/lib.sh 

# Direcotry of files to symlink
filesDir="$(pwd)/files"

title "EDITORS SCRIPT"

action "Configuring Warp Terminal"

defaults import dev.warp.Warp-Stable "$filesDir/warp-terminal/settings.plist"

# action "Configuring VsCode"

# ln -s "$filesDir/vscode/settings.json" "$vsCodeTargetDir/settings.json"

action "Configuring Cursor"

ln -s "$filesDir/cursor/settings.json" "$cursorTargetDir/settings.json"

action "Installing VsCode/Cursor extensions"

# Replace cursor with code if want to use vscode

cursor --install-extension dsznajder.es7-react-js-snippets
cursor --install-extension dbaeumer.vscode-eslint
cursor --install-extension esbenp.prettier-vscode
cursor --install-extension PKief.material-icon-theme
cursor --install-extension yzhang.markdown-all-in-one
cursor --install-extension eamodio.gitlens
cursor --install-extension GraphQL.vscode-graphql-execution
cursor --install-extension GraphQL.vscode-graphql
cursor --install-extension GraphQL.vscode-graphql-syntax
cursor --install-extension bradlc.vscode-tailwindcss
cursor --install-extension enkia.tokyo-night
cursor --install-extension vitest.explorer
cursor --install-extension ms-playwright.playwright
cursor --install-extension wayou.vscode-todo-highlight

# Sublime is not used anymore

# action "Configuring Sublime"

# wget "https://packagecontrol.io/Package%20Control.sublime-package" -O "$sublimeTargetDir/Installed Packages/Package Control.sublime-package" "--no-check-certificate";

# # Symlink settings files
# ln -s "$filesDir/sublime/Package Control.sublime-settings" "$sublimeTargetDir/Packages/User/Package Control.sublime-settings"
# ln -s "$filesDir/sublime/Preferences.sublime-settings" "$sublimeTargetDir/Packages/User/Preferences.sublime-settings"
# ln -s "$filesDir/sublime/Package Control.user-ca-bundle" "$sublimeTargetDir/Packages/User/Package Control.user-ca-bundle"

# # Copy packages
# cp "$filesDir/sublime/packages/Dracula Color Scheme.sublime-package" "$sublimeTargetDir/Installed Packages/Dracula Color Scheme.sublime-package"

warning "Config to import/setup manually: \n   - Cursor (Rules & internal settings) \n" 

success "Script completed"
