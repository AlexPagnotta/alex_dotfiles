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

arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

arch -x86_64 brew update 

arch -x86_64 brew upgrade 


action "Installing Brew packages"

# Personal

brew install youtube-dl
brew install ffmpeg

# Terminal

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh-completions

# Dev

brew install wget
brew install git
brew install rbenv 
brew install volta 

# Work 

brew install postgresql
brew install openfortivpn

brew install grpc
brew install mactex
brew install imagemagick
brew install pdftk-java 

action "Installing Brew Cask packages"

brew install mas

brew tap caskroom/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

mas install 1176895641 #Spark
mas install 1438389787 #Pasta
mas install 1091189122 #Bear
mas install 1481302432 #Instapaper
mas install 1533805339 #Keepa
mas install 1352778147 #bitwarden
mas install 1435957248 #drafts

brew install --cask google-chrome
brew install --cask spotify
brew install --cask whatsapp
brew install --cask skype
brew install --cask iterm2
brew install --cask sourcetree
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask bitwarden
brew install --cask gimp
brew install --cask zoom
brew install --cask postman
brew install --cask docker
brew install --cask spectacle
brew install --cask grammarly

action "Brew cleanup" 

brew cleanup

# turn off prevent sleep.
killall caffeinate

warning "App to install manually: \n   - Authy on Mac App Store \n   - Logi Options" 

success "Installation completed"


