# Load utils
cd ${BASH_SOURCE%/*}
source ../utils/folder_files.sh 
source ../utils/lib.sh 

# Direcotry of files to symlink
filesDir="$(pwd)/files"

title "EDITORS SCRIPT"

action "Configuring iTerm2"

defaults write com.googlecode.iterm2 PrefsCustomFolder "$filesDir/iterm2"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

action "Configuring VsCode"

ln -s "$filesDir/vscode/settings.json" "$vsCodeTargetDir/settings.json"

action "Installing VsCode extensions"

code --install-extension actboy168.tasks
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension esbenp.prettier-vscode
code --install-extension PKief.material-icon-theme
code --install-extension yzhang.markdown-all-in-one

action "Configuring Sublime"

wget "https://packagecontrol.io/Package%20Control.sublime-package" -O "$sublimeTargetDir/Installed Packages/Package Control.sublime-package" "--no-check-certificate";

# Symlink settings files
ln -s "$filesDir/sublime/Package Control.sublime-settings" "$sublimeTargetDir/Packages/User/Package Control.sublime-settings"
ln -s "$filesDir/sublime/Preferences.sublime-settings" "$sublimeTargetDir/Packages/User/Preferences.sublime-settings"
ln -s "$filesDir/sublime/Package Control.user-ca-bundle" "$sublimeTargetDir/Packages/User/Package Control.user-ca-bundle"

# Copy packages
cp "$filesDir/sublime/packages/Dracula Color Scheme.sublime-package" "$sublimeTargetDir/Installed Packages/Dracula Color Scheme.sublime-package"

success "Script completed"
