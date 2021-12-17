# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Sourcing plugins ------------------------------------------------------------

source './.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

# -----------------------------------------------------------------------------

# Sourcing .bash_aliases if present
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

##################################### END ######################################

# Setting up Starship Prompt
eval "$(starship init zsh)"
