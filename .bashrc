#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

PS1='\u@\h:\w\$ '

# enable color support of ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

EDITOR=ed

PACKAGER="Hildigerr Vergaray <Maintainer@YmirSystems.com>"
GPGKEY=CC81DADFA8ED700ECC226BD9688517121CD720CF

##BANNERS:

echo
echo "                 |ZZzzz"
echo "                 |"
echo "                 |"
echo "    |ZZzzz      /^\            |ZZzzz"
echo "    |          |~~~|           |"
echo "    |        |^^^^^^^|        / \ "
echo "   /^\       |[]+    |       |~~~|"
echo "|^^^^^^^|    |    +[]|       |   |"
echo "|    +[]|/\/\/\/\^/\/\/\/\/|^^^^^^^|"
echo "|+[]+   |~~~~~~~~~~~~~~~~~~|    +[]|"
echo "|       |  []   /^\   []   |+[]+   |"
echo "|   +[]+|  []  || ||  []   |   +[]+|"
echo "|[]+    |      || ||       |[]+    |"
echo "|_______|------------------|_______|"

##FORTUNE COOKIE
echo
fortune ~/.fortunecookies/havamal.txt
echo
