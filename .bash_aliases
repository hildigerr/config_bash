#
#  my aliases
#

alias cls='clear'
alias CLS='cls'
alias run='clear ; ./a.out'

alias clean='find . -empty -type d -delete'

alias lss='ls | grep'
alias hgrep='history | grep'

mime-name () {
    grep $1 /usr/share/mime/globs | egrep -o '.+\/[^:]+' | tr '/' '-'
}

#Zelda-Ocarina of Time
#alias oot='mupen64plus --fullscreen --nogui ~/Games/ROM/N64/Legend\ of\ Zelda\,\ The\ -\ Ocarina\ of\ Time\ \(U\)\ \(V1.2\)\ \[\!\].z64'

#Star Trek console game in zcode
#alias ztrek='frotz ~/Games/IF/z-games/ztrek.z5'


#assembly language compiler
#alias yasm64='yasm -f elf64'
##reminder link with "ld -s -o name name.o"

#was a script now just an alias:
#alias mount_iso='mount -o loop disk1.iso /mnt/disk'

alias myip-lan="ip -4 a|grep -oP '(?<=inet\s)\d+(\.\d+){3}'|grep -v '127.0.0.1'"
alias myip-wan="curl ifconfig.me/ip"
