rsync -av ./config/ ~/
cd
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
mv ~/molokai.vim ~/.vim/colors/
vim +PluginInstall +qall
sudo apt install build-essential cmake python3-dev
# youcompleteme compilation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer
