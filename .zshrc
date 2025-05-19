# alias to dotfiles for version control
alias dotconfig="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


## Terminal Prompt customisation via vcs_info
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Colours
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{cyan}'
COLOR_DEF=$'%f'
COLOR_GIT=$'%F{yellow}'

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:*' formats '[%b] %F{green}%c%F{red}%u'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
zstyle ':vcs_info:git:**' check-for-changes true


# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}${vcs_info_msg_0_}${COLOR_DEF} $ '
