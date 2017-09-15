##############################################################################
# ~/.bashrc 
##############################################################################


# Source if file exists
source_exist() {
    [[ -f $1 ]] && source $1
}

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
     __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
     source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

source_exist ~/git-completion.bash
source_exist ~/git-prompt.sh
source_exist ~/.bash_nag
source_exist ~/.bash_alii

# Enable history appending instead of overwriting when exiting.
shopt -s histappend

# prompt 
function __prompt_command() {
    PROMPT_RESET="\e[00m"
    PROMPT_WHITE="\e[37m"
    PROMPT_RED="\e[31m"
    PROMPT_GREEN="\e[32m"
    PROMPT_CYAN="\e[36m"
    PROMPT_MAGENTA="\e[35m"
    PROMPT_YELLOW="\e[93m"
    PROMPT_BLUE="\e[34m"
    BOLD_BLUE="\e[1;34m"

    PROMPT_USER="\u"
    PROMPT_PWD="$BOLD_BLUE\W$PROMPT_RESET"
    PROMPT_BRANCH="$PROMPT_GREEN$(__git_ps1 " %s")$PROMPT_RESET"

    PS1="[$PROMPT_USER $PROMPT_PWD$PROMPT_BRANCH]\$ "
}

PROMPT_COMMAND=__prompt_command
