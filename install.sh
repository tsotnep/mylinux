echo "Start.."
source ~/.bash_aliases

read -n1 -ep "install packages from apt? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo "using sudo for apt"
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync 
  sudo apt install -y vim dropbox git gitk vim glipper libevent-dev ncurses-dev most 
  sudo apt install -y pinta sublime-text automake shutter sublime-text tree colordiff
  sudo apt install -y owncloud-client nmap arp arp-scan geoclue-2.0 redshift-gtk meld grc
  sudo apt autoremove
fi



read -n1 -ep "install java-oracle-9? [y,n] - " ans 
if [ $ans == "y" ]
then
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java9-installer
  sudo apt-get install oracle-java9-set-default
fi



read -n1 -ep "install chrome? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo "using sudo for apt"
  cd ~/Downloads
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
fi



read -n1 -ep "install atom? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo "using sudo for apt"
  sudo add-apt-repository ppa:webupd8team/atom
  sudo apt-get update
  sudo apt-get install -y atom
fi


read -n1 -ep "install skype-alpha? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo "using sudo for apt"
  cd ~/Downloads
  wget  https://repo.skype.com/latest/skypeforlinux-64-alpha.deb
  sudo dpkg -i skypeforlinux-64-alpha.deb
fi



read -n1 -ep "create sumlinks? [y,n] - " ans 
if [ $ans == "y" ]
then
  # Force, Symbolic, Backupi
  cd ~/ownCloud/git/mylinux
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
fi


#no need for 2.4, 2.2 is alright.
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



read -n1 -ep "config ssh to reuse tunnels? [y,n] - " ans 
if [ $ans == "y" ]
then
  echo host \* >> ~/.ssh/config
  echo "ControlMaster auto" >> ~/.ssh/config
  echo "ControlPath ~/.ssh/ssh_mux_%h_%p_%r" >> ~/.ssh/config
fi



read -n1 -ep "add ssh key; config git with --global.*; print current public key if needed; [y,n] - " ans 
if [ $ans == "y" ]
then  
  ssh-add ~/.ssh/id_rsa
  git config --global user.email "tsotnep@gmail.com"
  git config --global user.name "tsotnep"
  git config --global push.default matching

  echo ~/.ssh/id_rsa.pub
  read -n1 -ep "do you have this public key in git server? [y,n] - " ans 
  if [ $ans == "y" ]
  then
    git push --set-upstream origin master
  else
    echo "Your Public Key, enter it here: https://github.com/settings/keys"
    cat ~/.ssh/id_rsa.pub
  fi
fi



#if its owncloud, then its always without https
# read -n1 -ep "config mylinux repo in case it was downloaded with https [y,n] - " ans 
# if [ $ans == "y" ]
# then
#   cd ~/ownCloud/git/mylinux  
#   git remote remove origin
#   git remote add origin git@github.com:tsotnep/mylinux.git
# fi

echo "Done.."

echo "Setup keyboard shortcuts and add georgian language and thats it."
