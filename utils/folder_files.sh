
# Config files to symlink in home
declare -a symlinkFiles=(
  ".zshrc"
  ".ssh/config"
  ".gitconfig",
  "com.mitchellh.ghostty/config"
  ".config/starship.toml"
)

# Vs code directory where symlink config files
# vsCodeTargetDir=$HOME/Library/Application\ Support/Code/User

# Zed directory where symlink config files
zedTargetDir=$HOME/.config/zed

# Cursor directory where symlink config files
cursorTargetDir=$HOME/Library/Application\ Support/Cursor/User

# Sublime directory where symlink config files
# sublimeTargetDir=$HOME/Library/Application\ Support/Sublime\ Text/
