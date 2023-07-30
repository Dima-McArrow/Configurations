# ## 

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/Users/dimitrimakarov/.micromamba/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/dimitrimakarov/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/dimitrimakarov/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/dimitrimakarov/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/dimitrimakarov/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dimitrimakarov/micromamba/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dimitrimakarov/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/dimitrimakarov/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dimitrimakarov/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PATH="/usr/local/bin/python3:$PATH"
export PATH

# export CLICOLOR=1
# LSCOLORS=GxFxCxDxBxegedabagaced,
alias ls="lsd"
alias ll="lsd -alh"
alias lt='exa --tree'
alias shrel="exec $SHELL -l"
alias cat="bat"

eval "$(starship init zsh)"

# zplug activation
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
source $HOME/zsh_plugins/calc.plugin.zsh
source $HOME/zsh_plugins/web-search
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "arzzen/calc.plugin.zsh"
zplug "plugins/web-search",   from:oh-my-zsh
zplug load

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/Cellar/zplug/2.4.2/repos/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# Other plugins


# Open Firefox:
function firefox() {
  echo "Opening Firefox Browser ...";
  open -n /Applications/Firefox.app
}

# Open Pages:
function pages() {
  echo "Opening file in Pages ..."
  open -n /Applications/Pages.app
}

# Open Numbers:
function numbers() {
  echo "Opening file in Numbers ..."
  open -n /Applications/Numbers.app
}

# system info
neofetch

