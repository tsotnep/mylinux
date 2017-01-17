echo "Start.."
source ~/.bash_aliases

read -n1 -ep "install packages from apt? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo "using sudo for apt"
  sudo apt update
  sudo apt upgrade
  sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync vim dropbox git gitk vim glipper libevent-dev ncurses-dev most pinta sublime-text automake shutter sublime-text
  sudo apt autoremove
fi

read -n1 -ep "create sumlinks? [y,n] - " ans 
if [ $ans == "y" ]
then
  # Force, Symbolic, Backup
  ln -fsb `pwd`/bash_aliases $HOME/.bash_aliases
  ln -fsb `pwd`/vimrc $HOME/.vimrc
  ln -fsb `pwd`/tmux.conf $HOME/.tmux.conf
  ln -fsb `pwd`/bashrc $HOME/.bashrc
  echo "using sudo for linkin csh.cshrc in /etc/"
  sudo ln -fsb `pwd`/csh.cshrc /etc/csh.cshrc
fi

read -n1 -ep "install tmux2.2? [y,n] - " ans 
if [ $ans == "y" ]
then
  mkdir ~/ownCloud/git/tmux
  mkdir ~/ownCloud/git/tmux/tmux2.2
  cd ~/ownCloud/git/tmux/tmux2.2
  wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
  tar -zxf tmux-2.2.tar.gz
  cd tmux-2.2
  ./configure && make
  echo "using sudo for linking tmux binary in /usr/local/bin"
  sudo ln -sf `pwd`/tmux /usr/local/bin/
 # cd ~/ownCloud/git/mylinux
 # rm tmux-2.2.tar.gz
 # rm tmux-2.2
fi


# read -n1 -ep "install tmux2.4? [y,n] - " ans 
# if [ $ans == "y" ]
# then
#   mkdirc ~/ownCloud/git/tmux/tmux2.4
#   git clone https://github.com/tmux/tmux.git
#   cd tmux
#   sh autogen.sh
#   ./configure && make
#   sudo ln -sf `pwd`/tmux /usr/local/bin/
# fi


read -n1 -ep "install tmux plugins manager? [y,n] - " ans 
if [ $ans == "y" ]
then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
  

read -n1 -ep "install ID reader software? [y,n] - " ans 
if [ $ans == "y" ]
then
  wget https://installer.id.ee/media/install-scripts/install-open-eid.sh
  bash install-open-eid.sh
  rm install-open-eid.sh*
fi

read -n1 -ep "generate ssh key? [y,n] - " ans 
if [ $ans == "y" ]
then
  ssh-keygen -t rsa -C "tsotnep@gmail.com"
fi

ssh-add ~/.ssh/id_rsa

read -n1 -ep "config ssh to reuse tunnels? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo host \* >> ~/.ssh/config
  echo "ControlMaster auto" >> ~/.ssh/config
  echo "ControlPath ~/.ssh/ssh_mux_%h_%p_%r" >> ~/.ssh/config
fi

read -n1 -ep "config git [y,n] - " ans 
if [ $ans == "y" ]
then
  git config --global user.email "tsotnep@gmail.com"
  git config --global user.name "tsotnep"
  git config --global push.default matching
  cd ~/ownCloud/git/mylinux  
  git remote remove origin
  git remote add origin git@github.com:tsotnep/mylinux.git

  echo ~/.ssh/id_rsa.pub
  read -n1 -ep "do you have this public key in git server? [y,n] - " ans 
  if [ $ans == "y" ]
  then
    git push --set-upstream origin master
  fi

fi

echo "Done.."

echo "Install Chrome manually"
echo "Setup keyboard shortcuts"
echo "Configure keyboard"
