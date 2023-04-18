#Exports
export MOZ_ENABLE_WAYLAND=1
export OBSIDIAN_USE_WAYLAND=1

# Gnome keyring
# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

. "$HOME/.cargo/env"
