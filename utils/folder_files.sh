
# Config files to symlink in home
declare -a symlinkFiles=(
  ".zshrc"
  ".ssh/config"
  ".gitconfig"
)

# Vs code directory where symlink config files
vsCodeTargetDir=$HOME/Library/Application\ Support/Code/User

# Sublime directory where symlink config files
sublimeTargetDir=$HOME/Library/Application\ Support/Sublime\ Text/