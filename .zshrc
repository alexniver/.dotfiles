# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/zhulin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# alias common
alias c='clear'
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -la'
alias l.='ls -d .* --color=auto'

# dirs
alias cd..='cd ..'
alias .0='cd .'
alias .='cd .'
alias .1='cd ..'
alias ..='cd ..'
alias .2='cd ../../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .....='cd ../../../../'
alias .5='cd ../../../../../'
alias ......='cd ../../../../../'
alias mkdir='mkdir -pv'
alias d='pwd'


# ping
alias ping='ping -c 5'

# pacman
alias spacman='sudo pacman'
alias p='sudo pacman'

# exec
alias e='exec'

# nvim alias
alias vi='nvim'
alias ni='nvim'
alias vim='nvim'
alias svi='sudo nvim'
alias svim='sudo nvim'
alias snvim='sudo nvim'

# git alias

# wget
alias wget='wget -c'

# df du
alias df='df -H'
alias du='du -ch'

# dotfiles git config alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no

# autojump
[[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh

# fzf
[[ -s /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -s /usr/share/fzf/completion.zsh ]] && source /usr/share/fzf/completion.zsh


[[ -s /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme ]] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

