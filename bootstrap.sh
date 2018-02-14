#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".macos" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    --exclude "LICENSE-MIT.txt" \
    -avh --no-perms . ~;
#  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
  if ! type "brew" > /dev/null; then
    echo "brew not detected, let us install now";
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
fi;
unset doIt;
