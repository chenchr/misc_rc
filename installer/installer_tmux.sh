if [[ ! -e ~/.tmux.conf ]]; then
    touch ~/.tmux.conf
fi

echo -e "\n # from misc_rc" >> ~/.tmux.conf
echo "source-file ~/.misc_rc/tmux.conf" >> ~/.tmux.conf
