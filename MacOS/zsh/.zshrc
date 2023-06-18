
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

export CLICOLOR=1
alias ls="ls -G"
alias ll="ls -lG"

eval "$(starship init zsh)"

