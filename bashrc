#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# enable bash-completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh
GIT_PROMPT_THEME=Minimal

rightprompt()
{
    printf "%*s" $COLUMNS "right prompt"
}
#PS1='[\u@\h \W]\$ '
#PS1='\[\033[38;5;6m\][\[\033[38;5;118m\]\[\033[38;5;154m\]\[\033[38;5;10m\]● \[\033[0m\]\[\033[38;5;118m\]\[\033[38;5;244m\]\[\033[1m\]\[\033[38;5;32m\]$USER \[\033[38;5;243m\] @ \[\033[38;5;45m\]$HOSTNAME\[\033[0m\] \[\033[38;5;243m\] in \[\033[38;5;155m\] \w\[\033[38;5;6m\]]\[\033[38;5;118m\]\[\033[0m\]\[\033[38;5;10m\]\[\033[0m\] '
export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] @ \[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]"
#export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;14m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] [\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]"

export TERM=rxvt-256color

export EDITOR=vim

PS2='\[\033[38;5;6m\][\[\033[38;5;118m\]\[\033[38;5;154m\]\[\033[38;1m\]● \[\033[0m\]\[\033[38;5;118m\]\[\033[38;5;244m\]\[\033[1m\]\[\033[38;5;208m\]$USER@$HOSTNAME\[\033[0m\]\[\033[38;5;118m\] \w\[\033[38;5;6m\]]\[\033[38;5;118m\]\[\033[0m\]\[\033[38;5;10m\]\[\033[0m\] '

archey3

#eval $(dircolors -b ~/.dir_colors)

#echo "Would you like to start the fish shell? [y/n[?"
#
#read answer
#
#if [ $answer == "y" ]; then
#  exec fish
#elif [ $answer == "n" ]; then
#  echo "Starting bash"
#else
#  echo "Please enter y or n."
#fi

#if [ "$TERM" = "linux" ]; then
#    _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
#    for i in $(sed -n "$_SEDCMD" $HOME/.Xdefaults | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
#        echo -en "$i"
#    done
#    clear
#fi

eval $(dircolors -b ~/.dir_colors)
