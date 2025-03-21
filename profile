
# Enforce XDG Base Directory Specification Compliance
export XDG_STATE_HOME="$HOME/.local/state"
export LESSHISTFILE="$XDG_STATE_HOME/less_history"
export SQLITE_HISTORY="$XDG_STATE_HOME/sqlite_history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"

export DVDCSS_CACHE="${XDG_CACHE_HOME:-${HOME}/.cache}/dvdcss"

export ASPELL_CONF="per-conf ${XDG_CONFIG_HOME:-${HOME}/.config}/aspell/aspell.conf; personal ${XDG_CONFIG_HOME:-${HOME}/.config}/aspell/en.pws; repl ${XDG_CONFIG_HOME:-${HOME}/.config}/aspell/en.prepl"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-${HOME}/.config}/gtk-2.0/gtkrc"
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-${HOME}/.config}/pythonrc"

export ANDROID_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/android"

# Alias definitions.
if [ -f "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/aliases" ]; then
    . "${XDG_CONFIG_HOME:-${HOME}/.config}/bash/aliases"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# set MANPATH so it includes user's private manpages if they exist
if [ -d "$HOME/.local/man" ] ; then
    export MANPATH="$HOME/.local/man:$MANPATH"
fi

export EDITOR=ed

export PACKAGER="Hildigerr Vergaray <Maintainer@YmirSystems.com>"
export GPGKEY=CC81DADFA8ED700ECC226BD9688517121CD720CF
export CHROOT="${HOME}/Workspace/arch-repo/chroot"
