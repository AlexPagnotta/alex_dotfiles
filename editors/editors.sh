# Load utils
cd ${BASH_SOURCE%/*}
source ../utils/folder_files.sh
source ../utils/lib.sh

# Direcotry of files to symlink
filesDir="$(pwd)/files"

title "EDITORS SCRIPT"

action "Configuring Cursor"

ln -s "$filesDir/cursor/settings.json" "$cursorTargetDir/settings.json"

action "Installing Cursor extensions"

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
cursor --install-extension unifiedjs.vscode-mdx

warning "Config to import/setup manually: \n   - Cursor (Rules & internal settings) \n"

success "Script completed"
