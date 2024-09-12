#
#  my aliases
#

#  DOSisms
alias cls='clear'
alias CLS='cls'

# Enforce XDG Base Directory Specification Compliance
alias wget='wget --hsts-file="$XDG_STATE_HOME/wget-hsts"'
alias adb='HOME="$ANDROID_HOME" adb'

# enable color support of ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#  Searching
alias lss='ls | grep'
alias hgrep='history | grep'

mime-name () {
    grep $1 /usr/share/mime/globs | egrep -o '.+\/[^:]+' | tr '/' '-'
}

#  Alternatives
alias youtube-dl='yt-dlp'

#  Games
#Zelda-Ocarina of Time
#alias oot='mupen64plus --fullscreen --nogui ~/Games/ROM/N64/Legend\ of\ Zelda\,\ The\ -\ Ocarina\ of\ Time\ \(U\)\ \(V1.2\)\ \[\!\].z64'

# Interactive Fiction Ports
alias ztrek='frotz ~/Games/IF/ztrek.z5'
alias zrogue='frotz ~/Games/IF/rogue.z5'

#  Programming
alias run='clear; ./a.out'
#assembly language compiler
#alias yasm64='yasm -f elf64'
##reminder link with "ld -s -o name name.o"

#was a script now just an alias:
#alias mount_iso='mount -o loop disk1.iso /mnt/disk'

alias myip-lan="ip -4 a|grep -oP '(?<=inet\s)\d+(\.\d+){3}'|grep -v '127.0.0.1'"
alias myip-wan="curl https://ifconfig.me/ip"
alias myip-wan-alt="curl https://ipecho.net/plain"
alias myip-wan-ipv4="curl http://checkip.dyndns.com/"

