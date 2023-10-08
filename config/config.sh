# Load utils
cd ${BASH_SOURCE%/*}
source ../utils/folder_files.sh 
source ../utils/lib.sh 

# Directory of files to symlink
filesDir="$(pwd)/files"

title "CONFIG SCRIPT"

action "Symlinking config files"

for i in "${symlinkFiles[@]}"; do
  echo "Copying $i"
  ln -s "$filesDir/$i" "$HOME/$i"
done;

warning "Config to import manually: \n   - Raycast \n" 

success "Script completed"