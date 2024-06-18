# Ser Variables


# Change ZSH Options

##################
# Create Aliases #
##################

# bypass aliases -> 'command ls' will trigger the original ls command.
alias ls='ls -Fh' # F -> slash at the end of directories, h -> filesize resonably formatted (only relevant when combined with -l)


#########################
# Wirte handy functions #
#########################
function mkcd() {
  # "$@" means pass the arguments here
  # "$_" underscore takes the last argument for cd (because one create multiple directories at once with mkdir)
  mkdir -p "$@" && cd "$_";
}





# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/qwerty/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/qwerty/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/qwerty/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/qwerty/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="$HOME/.local/bin:$PATH"
# ~/.zshrc

eval "$(starship init zsh)"
