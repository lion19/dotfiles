# copy dotfiles to home dir,  install brew
```bash
$ ./bootstrap.sh
```

# install brew deps, including zsh
```bash
$ ./brew.sh
```

#install and configure zsh
```bash
sudo sh -c "echo $(which zsh) >> /etc/shells"
# install oh-my-zsh before even switching shells, or else you have to touch ~/.zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# touch ~/.zshrc unless you want to opt out of oh-my-zsh
chsh -s $(which zsh)
```

#Add your .extras file to ~.  Mine looks like this:
```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="tarik"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="tarik@occamzrazor.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global core.editor "mvim -f"
```

#TODO
* store .zshrc in this dotfile repo (by first checking oh-my-zsh does not overwrite .zshrc on install)
