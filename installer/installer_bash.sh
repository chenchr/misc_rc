if [[ ! -e ~/.bashrc ]]; then
    touch ~/.bashrc
fi

echo -e '\n# from misc_rc' >> ~/.bashrc
echo "source ~/.misc_rc/bashrc" >> ~/.bashrc
