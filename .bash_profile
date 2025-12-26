#
# ~/.bash_profile
#

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
sleep 2
exec startx
fi

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx


[[ -f ~/.bashrc ]] && . ~/.bashrc
