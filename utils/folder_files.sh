
# Config files to symlink in home
declare -a symlinkFiles=(
  ".zshrc"
  ".ssh/config"
  ".gitconfig",
  "Library/Application Support/com.mitchellh.ghostty/config"
  ".config/starship.toml",
  ".claude/.CLAUDE.md",
  ".claude/settings.json"
)

# Cursor directory where symlink config files
cursorTargetDir=$HOME/Library/Application\ Support/Cursor/User
