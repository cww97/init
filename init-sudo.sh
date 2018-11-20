# zsh installation
sudo apt-get install zsh

sudo apt-get install gvim

cd
rsync -av ./config ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
vim +PluginInstall +qall

git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


sudo apt install build-essential cmake python3-dev
# youcompleteme compilation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer