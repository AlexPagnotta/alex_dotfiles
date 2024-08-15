# Load lib
cd ${BASH_SOURCE%/*}
source ../utils/lib.sh 

# Ask for the administrator password upfront
ask_for_sudo

title "BREW INSTALL SCRIPT"

# Prevent sleep
caffeinate &

# Asks if an intel version of brew is needed, only for M1 macs
read -r -p "Do you want to the install an additional intel version of brew (M1 Only) [y|N] " brewIntelResponse

action "Installing Brew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update 

brew upgrade 

if [[ $brewIntelResponse =~ (yes|y|Y) ]];then
  
    action "Installing Intel Brew"

    arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    arch -x86_64 brew update 

    arch -x86_64 brew upgrade 
fi



action "Installing Brew packages"

# Dev

brew install wget
brew install git
brew install volta 

# Work Craft CMS, PHP, laravel valet etc.

brew install php
brew install composer
brew install mysql

brew services start php
brew services start mysql


action "Installing Brew Cask packages"

brew install mas

brew tap caskroom/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

mas install 1176895641 #Spark

# Work
mas install 506189836 #Harvest
mas install 1333542190 #1 Password

brew install --cask arc
brew install --cask google-chrome
brew install --cask firefox
brew install --cask logi-options-plus
brew install --cask spotify
brew install --cask warp
brew install --cask sourcetree
brew install --cask sublime-text
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask figma
brew install --cask blender
brew install --cask raycast
brew install --cask rive
brew install --cask gimp

# Work
brew install --cask slack
brew install --cask tableplus


action "Installing packages from outside brew" 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

action "Brew cleanup" 

brew cleanup

# turn off prevent sleep.
killall caffeinate

warning "App to install manually: \n   - Authy on Mac App Store \n - Fabric (fabric.so)" 

success "Installation completed"


