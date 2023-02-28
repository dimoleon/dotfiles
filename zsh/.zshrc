# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
# zstyle :compinstall filename '/home/giannis/.zshrc'
# autoload -Uz compinit
# compinit
# # End of lines added by compinstall
#
# Zsh prompt
# autoload -Uz promptinit
# promptinit
# prompt redhat

# Aliases 
alias ls='exa -al --color=always --group-directories-first'
alias cat='bat'
alias less='bat'
alias grep='grep --color=auto'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias vim='nvim'
alias viml='/usr/bin/vim'
alias ranger='ranger --choosedir=$HOME/.cache/.rangerdir; LASTDIR=`cat $HOME/.cache/.rangerdir`; cd "$LASTDIR"'

alias fzfo='xdg-open "$(rg --files | fzf)"'

# Exports 
export EDITOR='nvim'
export VISUAL='nvim'
# export TERM='xterm-kitty'
export TERMINAL='xterm-kitty'
export PDFVIEWER='evince'
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/Documents/sources/gcc-arm-none-eabi-10.3-2021.10/bin
# export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
