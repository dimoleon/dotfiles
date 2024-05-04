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
alias code='code --ozone-platform-hint=auto --enable-features=WaylandWindowDecorations'
alias ls='eza -al --color=always --group-directories-first'
alias cat='bat'
# alias cat='batcat'
# alias fd='fdfind'
# alias less='bat'
# alias less='batcat'
alias grep='grep --color=auto'
# alias grep='rg'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'


alias vim='nvim'
alias viml='/usr/bin/vim'
alias ranger='ranger --choosedir=$HOME/.cache/.rangerdir; LASTDIR=`cat $HOME/.cache/.rangerdir`; cd "$LASTDIR"'
alias ra='ranger'

# alias o='xdg-open "$(rg --files | fzf --height 50%)"'
alias d='cd "$(fd --type d --hidden . | fzf --height 50%)"'
alias remote='remmina $(locate ServerStudy.rdp) && exit'

# check_directory() {
#     if [[ $PWD == "$HOME/Documents/repos/comms_software" ]]; then
#         # Define your aliases here
#         alias build='cmake --build ./build --target STM32H7A3ZIQSetup.elf -- -j 6'
#         alias flash='/usr/bin/openocd -s /usr/share/openocd/scripts -f /home/giannis/Documents/repos/comms_software/stm32h7x3i_eval.cfg -c "tcl_port disabled" -c "gdb_port disabled" -c "tcl_port disabled" -c "program \"/home/giannis/Documents/repos/comms_software/flash/STM32H7A3ZIQSetup.elf\"" -c reset -c shutdown
# '
#     else
#         # Unset the aliases if you're not in the specific directory
#         unalias build 2> /dev/null
#         unalias flash 2> /dev/null
#     fi
# }
#
function check_zsh_file {
    local zsh_file=".zsh"
    if [[ -f $zsh_file ]]; then
        source $zsh_file
    fi
}

function chpwd_hook {
    check_zsh_file
}

# Exports 
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-kitty'
# export TERM='xterm-256color'
# export TERMINAL='xterm-kitty'
export PDFVIEWER='okular'
export PATH=$HOME/.local/bin:$HOME/dotfiles/scripts:$HOME/.cargo/bin:$PATH
# export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
export PYTHONPATH=$HOME/.local/lib/python3.12/site-packages:/usr/local/lib64/python3.12/site-packages:/usr/lib/python3.12/site-packages:$PYTHONPATH
export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH
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
#source ~/dotfiles/zsh/git.zsh
# source ~/dotfiles/zsh/robbyrussell.zsh
source ~/Documents/sources/powerlevel10k/powerlevel10k.zsh-theme

add-zsh-hook chpwd chpwd_hook

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/giannis/Documents/sources/juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

