#
# bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

HISTIGNORE="w:l[sla]:[bf]g:pwd:clear:git status:exit"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

PS1='\u@\h:\w\$ '

# Alias definitions.
if [ -f "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/aliases" ]; then
    . "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/aliases"
fi

# Korn cd
function cd() {
  if [ $# -eq 2 ]; then
    builtin cd "${PWD/$1/$2}";
  elif [ $# -eq 1 ]; then
    builtin cd "$1";
  else builtin cd;
  fi
}

##BANNERS:

# echo
# echo "                 |ZZzzz"
# echo "                 |"
# echo "                 |"
# echo "    |ZZzzz      /^\            |ZZzzz"
# echo "    |          |~~~|           |"
# echo "    |        |^^^^^^^|        / \ "
# echo "   /^\       |[]+    |       |~~~|"
# echo "|^^^^^^^|    |    +[]|       |   |"
# echo "|    +[]|/\/\/\/\^/\/\/\/\/|^^^^^^^|"
# echo "|+[]+   |~~~~~~~~~~~~~~~~~~|    +[]|"
# echo "|       |  []   /^\   []   |+[]+   |"
# echo "|   +[]+|  []  || ||  []   |   +[]+|"
# echo "|[]+    |      || ||       |[]+    |"
# echo "|_______|------------------|_______|"

##FORTUNE COOKIE
echo
fortune havamal | boxes -d parchment
echo
