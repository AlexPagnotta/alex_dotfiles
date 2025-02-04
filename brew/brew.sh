# Load lib
cd ${BASH_SOURCE%/*}
source ../utils/lib.sh 

# Ask for the administrator password upfront
ask_for_sudo

title "BREW INSTALL SCRIPT"

# Prevent sleep
caffeinate &

action "Installing Brew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update 

brew upgrade 

action "Installing Brew packages"

# Dev

brew install wget
brew install git
brew install volta 


action "Installing Brew Cask packages"

brew install mas

brew tap caskroom/cask
brew tap homebrew/cask-versions

mas install 1176895641 #Spark

brew install --cask arc
brew install --cask google-chrome
brew install --cask firefox
brew install --cask logi-options-plus
brew install --cask spotify
brew install --cask warp
brew install --cask sourcetree
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask figma
brew install --cask blender
brew install --cask raycast
brew install --cask vlc
brew install --cask notion
brew install --cask notion-calendar
brew install --cask font-fira-code
brew install -—cask hyperkey


action "Installing packages from outside brew" 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

action "Brew cleanup" 

brew cleanup

# turn off prevent sleep.
killall caffeinate

success "Installation completed"


