# zsh installation
sudo apt-get install zsh

sudo apt update
sudo apt install vim-gtk

cd
rsync -av ./config/ ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
cp ~/molokai.vim ~/.vim/colors/
vim +PluginInstall +qall

git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local


sudo apt install build-essential cmake python3-dev
# youcompleteme compilation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer


# always at end
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
