# Load lib
cd ${BASH_SOURCE%/*}
source ../utils/lib.sh 

title "DEV SCRIPT"

action "Installing Xcode CLI"

xcode-select --install &> /dev/null

# Wait until the XCode Command Line Tools are installed
until xcode-select --print-path &> /dev/null; do
  sleep 5
done

#N.B To run the next commands the full XCode installation is needed

#sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

# Agree to the terms of the Xcode license
#sudo xcodebuild -license accept

action "Configuring Ruby"

ruby_version=2.6.5

rbenv install $ruby_version

rbenv global $ruby_version

gem install bundler

rbenv rehash

action "Configuring Volta Node Manager"

volta install node@14

volta install yarn

action "Installing global yarn packages"

yarn global add eslint prettier

success "Script completed"

