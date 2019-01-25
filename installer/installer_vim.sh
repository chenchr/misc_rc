if [[ ! -e ~/.vimrc ]]; then
    touch ~/.vimrc
fi


cd ~/.misc_rc/vim/bundle/YouCompleteMe
# with semantic support for C-family languages
if [ ! -d ~/.misc_rc/vim/bundle/YouCompleteMe/third_party/ycmd/clang_archives ]; then
    mkdir ~/.misc_rc/vim/bundle/YouCompleteMe/third_party/ycmd/clang_archives
    cp ~/.misc_rc/utils/libclang-7.0.0-x86_64-unknown-linux-gnu.tar.bz2 ~/.misc_rc/my_plugins/YouCompleteMe/third_party/ycmd/clang_archives/
fi
python3 install.py --clang-completer

echo -e "\n\" from misc_rc" >> ~/.vimrc
echo "so ~/.misc_rc/vimrc" >> ~/.vimrc
