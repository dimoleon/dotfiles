# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

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
export TERM='xterm-kitty'
#export TERMINAL='xterm-kitty'
export PDFVIEWER='evince'
#export PATH=$PATH:$HOME/.local/bin
export PYTHONPATH="$PYTHONPATH:$HOME/.local/lib/python"
export XDG_CONFIG_HOME="$HOME/.config/"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


unset rc
set -o vi
