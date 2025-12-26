#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

red='\[\e[0;31m\]'
nc='\[\e[0m\]'
CYAN='\[\e[1;36m\]'

red='\[\e[0;31m\]'
CYAN='\[\e[1;36m\]'
GREEN='\[\e[1;32m\]'
PURPLE='\[\e[1;35m\]'
nc='\[\e[0m\]'

if [ "$UID" = 0 ]; then
    # Root user: red username@hostname, cyan cwd, newline, red #
    PS1="${red}\u${nc}@${red}\h${nc}:${CYAN}\w${nc}\n${red}#${nc} "
else
    # Regular user: purple username, cyan hostname, green cwd, newline, green $
    PS1="${PURPLE}\u${nc}@${CYAN}\h${nc}:${GREEN}\w${nc}\n${GREEN}\$${nc} "
fi

export PATH="$HOME/.local/bin":$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
