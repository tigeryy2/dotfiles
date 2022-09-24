#!/usr/bin/env bash

#==============
# Functions
#==============
# from https://stackoverflow.com/questions/3915040/how-to-obtain-the-absolute-path-of-a-file-via-shell-bash-zsh-sh
# get absolute path from relative path
get_abs_filename() {
  # $1 : relative filename
  if [ -d "$(dirname "$1")" ]; then
    echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
  fi
}

# create symlink at home dir to file from relative path
# converts relative path to absolute before creating the symlink
create_symlink() {
  # $1 : relative filename to dotfile
  ln -s "$(get_abs_filename "$1")" ~/$1
  echo $1
}

#==============
# Remove old dot flies
#==============
# removes old dot file, redircting all stout and sterr into the void
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore > /dev/null 2>&1
sudo rm -rf ~/.gitmessage > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1

#==============
# Create symlinks in the home folder
#==============
SYMLINKS=()
SYMLINKS+=($(create_symlink ".gitconfig"))
SYMLINKS+=($(create_symlink ".gitignore"))
SYMLINKS+=($(create_symlink ".gitmessage"))
SYMLINKS+=($(create_symlink ".zshrc"))

#==============
# Done
#==============
echo ${SYMLINKS[@]}
echo -e "\n====== All Done!! ======\n"
echo
