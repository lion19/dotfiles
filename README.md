### use: 
# copy dotfiles to home dir,  install brew
```bash
$ ./bootstrap.sh
```
# install brew deps, including zsh
```bash
$ ./brew.sh
```

```bash
sudo sh -c "echo $(which zsh) >> /etc/shells"
# install oh-my-zsh before even switching shells, or else you have to touch ~/.zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# touch ~/.zshrc unless you want to opt out of oh-my-zsh
chsh -s $(which zsh)
```


### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```
