# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"


function title() {
  echo  "\n$COL_BLUE --- $1 --- $COL_RESET"
}

function action() {
    echo  "\n$COL_MAGENTA[action]:$COL_RESET\n ⇒ $1..."
}

function success() {
  echo "\n$COL_GREEN[success]$COL_RESET $1"
}

function warning() {
    echo  "\n$COL_YELLOW[warning]:$COL_RESET\n ⇒ $1"
}


function enter_for_confirm() {
    echo "\n"
    read -p "Press enter to confirm:"
}

ask_for_sudo() {
  # Ask for the administrator password upfront
  sudo -v

  # Update existing `sudo` time stamp until this script has finished
  # https://gist.github.com/cowboy/3118588
  while true; do
    sudo -n true
    sleep 60
    kill -0 "$$" || exit
  done &> /dev/null &
}