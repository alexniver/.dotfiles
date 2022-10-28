# .dotfiles
dotfiles for linux

## usage

[sulotion from](https://www.atlassian.com/git/tutorials/dotfiles)

```
git clone --bare git@github.com:alexniver/.dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout --
config config status.showUntrackedFiles no
```
