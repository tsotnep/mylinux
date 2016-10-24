#PC Specific
alias sc="cd ~/workspaceVivado/scripts"
alias mm="cd /home/tsotne/workspaceVivado/ip_repo/MMULT_AXI_STREAM_1.0"
alias mmp="cd /home/tsotne/workspaceVivado/MMULT_AXI_STREAM_2"
alias c='cd'
alias gt='cd ~/git'
alias vpnati='openvpn --config /home/tsotne/Documents/openvpn/client.ovpn'
alias shortcuts='ccat ~/git/mylinux/shortcuts'
alias shortcutse='vim ~/git/mylinux/shortcuts'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/git/mylinux/keyboardshortcuts'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'
alias sshadd='ssh-add ~/git/ssh/mykey'
alias rreswifi='sudo rmmod ath9k && sudo modprobe ath9k'


#SHORTCUTS
alias install_basic_soft='sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync vim tmux'
alias tmuxe='vim ~/.tmux.conf'
alias reloadtmux='tmux source ~/.tmux.conf'
alias reload='exec bash'
alias bashrc='ccat ~/.bashrc'
alias bashrce='vim ~/.bashrc'
alias vimrce='vim ~/.vimrc'

alias spwd="PS1='[\u@\h \W]\$ '"
alias spwd1="PS1='[\W]\$ '"
alias spwd2="PROMPT_DIRTRIM=1"

alias ll="ls -gtGhi --color=always | sed -re 's/(\-|d)[^ ]* //'"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias lvim='vim -c "normal '\''0"'  #open last vim
alias rm=trash
alias rres='sudo shutdown -r now'
alias shtdwn='sudo shutdown -H now'
alias make='clear && make'
alias g++='\g++ -std=c++11 -g'
alias rsync='\rsync -avzcrl' #archive, verbose, compress, checksum, recursive, links,
alias xclip='\xclip -selection c'
alias ccat='pygmentize -g'
alias ter='gnome-terminal'
alias minicom='picocom'
alias install='sudo apt-get install'
alias lastchanges='sudo find $HOME -cmin 0.1'


#INFO
alias info_IPMAC='ifconfig'
alias info_Shell='ps -p $$'
alias info_Linux='cat /etc/*-release'
alias info_PC='inxi -Fx'
alias info_Storage='pydf'


#SCRIPTS
countfilesrec() { find $1 -type f | wc -l; }
countfiles() { find $1 -type f -maxdepth 1 | wc -l; }
picocom() { d=`date +%d_%m_%Y_%H_%M_%S`; old="$IFS"; IFS='_'; script -f -c 'sudo \picocom -e x -b 115200 /dev/ttyACM0' ~/Documents/logs/picocom/log_"$d"_"'$*'"; IFS=$old; }
exists() {
    if [ ! -f $1 ]; then
        echo "File not found!"
    else
        echo "File exists!"
    fi
}




####################################################################################
######################################### S S H
#alias sshttu='ssh -Y -l tsotne.putkaradze@intra.ttu.ee proksi.intra.ttu.ee'
#alias sshati='ssh -Y tsotne.putkaradze@intra@fx1'
alias sshstr='ssh -Y -C -c blowfish-cbc,arcfour tsotne@strudel.pld.ttu.ee'
alias sshpitsa='ssh -Y -C -c blowfish-cbc,arcfour tsotne@pitsa.pld.ttu.ee'
alias sshcomr='ssh root@162.243.43.46'
alias sshcomn='ssh tsotnep@162.243.43.46'
alias sshcom='ssh www-tsotnep@162.243.43.46'


####################################################################################
######################################### G I T
alias commit='git commit -m'
alias uncommit='git reset HEAD^' #undo the act of committing and everything you'd staged, but leave the work tree (your files) intact
alias uncommits='git reset --soft HEAD^' #undo the act of committing, leaving everything else intact
alias uncommith='git reset --hard HEAD^' #throwing away all uncommitted changes, resetting everything to the previous commit
alias undouncommith='git reset HEAD@{1}'
alias cm='git commit -m"either: moved a file, changed variable name, formatted the code or something simillar, no need for special message"'
alias push='git push'
alias pull='git pull'
alias log='git log'
alias status='git status'
alias st='git status'
alias amend='git commit --amend'
alias checkout='git checkout'
alias adda='git add ./ --all'
alias add='git add'
unadd() { git reset $1; } #remove added file while commiting
alias branch='git branch -v'
untrack() { git rm --cached $1; } #untrack already tracked file



####################################################################################
######################################### C + +
export fl='-pedantic -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Wno-unused'




####################################################################################
######################################### BASH CONFIG
export PAGER="/usr/bin/most -s" #colorful manpages
export GREP_OPTIONS='--color=auto'
#history
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"
