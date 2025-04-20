
# Enforce XDG Base Directory Specification Compliance
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export LESSHISTFILE="$XDG_STATE_HOME/less_history"
export SQLITE_HISTORY="$XDG_STATE_HOME/sqlite_history"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"

export DVDCSS_CACHE="$XDG_CACHE_HOME/dvdcss"

export ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/pythonrc"
export FCEUX_HOME="$XDG_CONFIG_HOME"

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
