eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export PATH=$HOME/bin:/usr/local/bin:/usr/bin:$PATH

setxkbmap -option caps:escape
xmodmap ~/.Xmodmap

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias journal="nvim /home/vinay/notes/obsidian/journal/$(date +%Y.%m.%d.md)"
alias vim=nvim
alias icat="kitty +kitten icat --align=left"
alias isvg="rsvg-convert | icat"
alias ssh="kitty +kitten ssh"
alias f=fzf
alias xcd='cd "$(xplr --print-pwd-as-result)" && ls'
alias cat=bat
alias cd=z
alias todo="h-m-m /home/vinay/docs/todo"
alias zj=zellij
alias ls=exa

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
# ssh-add ~/.ssh/id_razer_linux_ed25519
source /usr/local/bin/virtualenvwrapper.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vinay/code/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vinay/code/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vinay/code/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vinay/code/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export EDITOR=nvim
export PATH=$PATH:/usr/local/cuda/bin
# export PATH=$PATH:/usr/local/cuda-11.7/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.7/lib64

# export LIBTORCH=/home/vinay/code/src/libtorch
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${LIBTORCH}/lib

eval "$(zoxide init zsh)"

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

export PATH=$PATH:/home/vinay/.screenlayout/
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions set
zstyle ':completion:*' glob set
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' max-errors 3 not-numeric
zstyle ':completion:*' substitute set
zstyle :compinstall filename '/home/vinay/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt autocd extendedglob
unsetopt beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# Hishtory Config:
export PATH="$PATH:/home/vinay/.hishtory"
source /home/vinay/.hishtory/config.zsh
