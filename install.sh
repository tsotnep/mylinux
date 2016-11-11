source ~/.bashrc
touch ../.check
source ../.check
rm ../.check
echo "Start.."
echo "$VWS"
echo "$VBK"
echo "$VTMUX"
echo "$VGIT"
echo "$VID"

if [ "$VWS" != "1" ]
then
  # setup directories 
  mkdir ~/ws
  cd ~/ws
  mkdir workspace git logs vpn web Dropbox
  cd git
  git clone https://github.com/tsotnep/mylinux
  cd mylinux
fi
echo "VWS=1" >> ../.check

if [ "$VBK" != "1" ]
then
  # backup files
  cp ~/.bashrc ~/.bashrc_bak 2>/dev/null
  cp ~/.bash_profile ~/.bash_profile_bak 2>/dev/null
  echo "source ~/.bashrc" > ~/.bash_profile 
  cp ~/.vimrc ~/.vimrc_bak 2>/dev/null
  cp ~/.tmux.conf ~/.tmux.conf_bak 2>/dev/null
  #cp /etc/.bash.bashrc /etc/.bash.bashrc_bak 2>/dev/null
  
  # write new files
  ln -fs `pwd`/.bashrc $HOME
  ln -fs `pwd`/.vimrc $HOME
  ln -fs `pwd`/.tmux.conf $HOME
fi
echo "VBK=1" >> ../.check


if [ "$VTMUX" != "1" ]
then
  # setup tmux, install package manager, ctrl+A + I -to install all packages
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  # install tmux2.2
  if [ ! -d ~/ws/git/tmux ]
  then
    mkdir ~/ws/git/tmux
    cd ~/ws/git/tmux
    wget https://github.com/tmux/tmux/releases/download/2.2/tmux-2.2.tar.gz
    tar -zxf tmux-2.2.tar.gz
    cd tmux-2.2
    ./configure && make
    sudo ln -sf `pwd`/tmux /usr/local/bin/
  fi

  if [ "$VID" != "1" ]
  then
    #download and install id software
    wget https://installer.id.ee/media/install-scripts/install-open-eid.sh
    bash install-open-eid.sh
    rm install-open-eid.sh*
  fi
  echo "VID=1" >> ../.check 
  # install tools
  sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync vim dropbox git vim glipper tmux libevent-dev ncurses-dev most pinta google-chrome-stable
  sudo apt autoremove -y


fi
echo "VTMUX=1" >> ../.check


if [ "$VGIT" != "1" ]
then
  #config ssh to reuse tunnels
  echo host \* >> ~/.ssh/config
  echo "ControlMaster auto" >> ~/.ssh/config
  echo "ControlPath ~/.ssh/ssh_mux_%h_%p_%r" >> ~/.ssh/config

  #config git
  git config --global user.email "tsotnep@gmail.com"
  git config --global user.name "tsotnep"
  git push --set-upstream origin master
  git config --global push.default matching

  #config mylinux to use ssh instead of https
  cd ~/ws/git/mylinux
  git remote remove origin
  git remote add origin git@github.com:tsotnep/mylinux.git

  if [ ! -f ~/.ssh/id_rsa ]
  then
    #generate SSH key if necessary
    ssh-keygen -t rsa -C "tsotnep@gmail.com"
    ssh-add ~/.ssh/id_rsa
  fi
fi
echo "VGIT=1" >> ../.check


echo "Done.."
