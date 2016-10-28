
# setup directories 
mkdir ~/ws
cd ~/ws
mkdir workspace git logs vpn web Dropbox ssh
cd git
git clone https://github.com/tsotnep/mylinux
cd mylinux

# backup files
cp ~/.bashrc ~/.bashrc_bak 2>/dev/null
cp ~/.vimrc ~/.vimrc_bak 2>/dev/null
cp ~/.tmux.conf ~/.tmux.conf_bak 2>/dev/null
cp /etc/.bash.bashrc /etc/.bash.bashrc_bak 2>/dev/null

# write new files
ln -f .bashrc ~/
ln -f .vimrc ~/
ln -f .tmux.conf ~/
ln -f .bash.bashrc /etc/

# setup tmux, install package manager, ctrl+A + I -to install all packages
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install tools
sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync vim tmux dropbox git vim 



