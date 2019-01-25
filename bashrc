# prompt only show current directory
color_prompt=yes
if [ "$color_prompt" = yes ]; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
        else
                PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
                fi

                unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
*)
        ;;
esac

#for reverse search ctrl+s
stty -ixon

#for vi mode
bind 'set show-mode-in-prompt on'
set -o vi
bind -m vi-command '"H": beginning-of-line'
bind -m vi-command '"L": end-of-line'
bind -m vi-insert '"\C-p": previous-history'
bind -m vi-insert '"\C-n": next-history'


#nvidia-smi script
#watch -n 2 'nvidia-smi | (head -n 19 | tail -n 13; tail -n 10)'
#IGNOREEOF=10
