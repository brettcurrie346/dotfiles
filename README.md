# dotfiles

## Setup
```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bash_alii
config remote add origin git@github.com:brettcurrie346/dotfiles.git
```
## Usage
```bash
config status
config add .gitconfig
config commit -m 'Add gitconfig'
config push
```

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/brettcurrie346/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```
