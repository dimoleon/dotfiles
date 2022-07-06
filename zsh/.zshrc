#This is a comment
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/giannis/.zshrc'
autoload -Uz compinit
compinit
# # End of lines added by compinstall
#
# Zsh prompt
autoload -Uz promptinit
promptinit
prompt redhat

# Aliases 
alias ls='exa -al --color=always --group-directories-first'
alias cat='bat'
alias less='bat'
alias grep='grep --color=auto'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias vim='nvim'
alias ranger='ranger --choosedir=$HOME/.cache/.rangerdir; LASTDIR=`cat $HOME/.cache/.rangerdir`; cd "$LASTDIR"'

alias fzfo='xdg-open "$(rg --files | fzf)"'

# Exports 
export EDITOR='nvim'
export VISUAL='nvim'
# export TERM='xterm-kitty'
export TERMINAL='xterm-kitty'
export PDFVIEWER='evince'
export PATH=$PATH:$HOME/.local/bin
export PYTHONPATH="$PYTHONPATH:$HOME/.local/lib/python"

# zplug - manage plugins
# source /usr/share/zplug/init.zsh
# zplug "plugins/git", from:oh-my-zsh
# zplug 'dracula/zsh', as:theme
#
# zplug - install/load new plugins when zsh is started or reloaded
# if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
# fi
# zplug load #--verbose
#setxkbmap -model pc105 -layout us,gr -option grp:alt_shift_toggle
#setxkbmap -option caps:swapescape


# Syntax highlighting & Autosuggestions 
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh/git.zsh
# source ~/dotfiles/zsh/robbyrussell.zsh
source ~/Documents/sources/powerlevel10k/powerlevel10k.zsh-theme
