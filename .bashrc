#other


alias sc="cd ~/workspaceVivado/scripts"
alias mm="cd /home/tsotne/workspaceVivado/ip_repo/MMULT_AXI_STREAM_1.0"
alias mmp="cd /home/tsotne/workspaceVivado/MMULT_AXI_STREAM_2"
x_print() {
    echo "==========";
    echo "==========";
    echo "==========";

    for i in $*; do
        printf "$i "
    done;
    printf '\n';

    echo "==========";
    echo "==========";
    echo "==========";
    echo "==========";
}


alias rsync='\rsync -avzcrl' #archive, verbose, compress, checksum, recursive, links, 
alias tmuxe='vim ~/.tmux.conf'
alias reloadtmux='tmux source ~/.tmux.conf'
alias itmux='tmux source-file t_intern'
#copycom() { cat `readlink -f $1` | ssh root@45.55.155.46 "cat >> $2"; } #copy content of $1 into the file $2
copycom() { cat $1 | ssh root@45.55.155.46 "cat >> $2"; } #copy content of $1 into the file $2
fp() { readlink -f $1; }
# fpx() { readlink -f $1 | xclip; } #TODO
ter() {  gnome-terminal -e "bash -c \"$1; exec bash\""; }
alias c='cd'
alias gt='cd ~/git'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/git/mylinux/keyboardshortcuts'
alias lastchanges='sudo find $HOME -cmin 0.1'
#alias rreswifi='sudo service network-manager restart && sudo /etc/init.d/networking restart'
alias rreswifi='sudo rmmod ath9k && sudo modprobe ath9k'
alias rres='sudo shutdown -r now'
alias shtdwn='sudo shutdown -H now'
#TODO: give argument to countfiles, to take folder and count inside
alias countfilesrec='find . -type f | wc -l'
alias countfiles='find . -maxdepth 1 -type f | wc -l'
alias reload='exec bash'
alias shell='ps -p $$'
alias mac='/sbin/ifconfig'
alias xclip='\xclip -selection c'
alias ccat='pygmentize -g'
alias shortcuts='ccat ~/git/mylinux/shortcuts'
alias shortcutse='vim ~/git/mylinux/shortcuts'
alias bashrc='ccat ~/.bashrc'
alias bashrce='vim ~/.bashrc'
alias rm=trash
alias spwd="PS1='[\u@\h \W]\$ '"
alias spwd1="PS1='[\W]\$ '"
alias spwd2="PROMPT_DIRTRIM=1"
#alias picocom='sudo \picocom -e x -b 115200 /dev/ttyACM0'
#alias picocom="script -f -c 'sudo \picocom -e x -b 115200 /dev/ttyACM0' ~/Documents/logs/picocom/log_`date '+%d_%m_%Y_%H_%M_%S'`"

alias mintversion='cat /etc/*-release'
alias F='!sudo tee%'

alias vpnati='openvpn --config /home/tsotne/Documents/openvpn/client.ovpn'
picocom() { d=`date +%d_%m_%Y_%H_%M_%S`; old="$IFS"; IFS='_'; script -f -c 'sudo \picocom -e x -b 115200 /dev/ttyACM0' ~/Documents/logs/picocom/log_"$d"_"'$*'"; IFS=$old; } 

lscript() { script -f -c '$0' $2; }

alias minicom='picocom'
#alias ter='gnome-terminal &'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'
exists() { 
    if [ ! -f $1 ]; then
        echo "File not found!"
    else
        echo "File exists!"
    fi
}

alias install='sudo apt-get install'

export PAGER="/usr/bin/most -s" #colorful manpages
export GREP_OPTIONS='--color=auto'
alias lvim='vim -c "normal '\''0"'  #open last vim
#alias ll="ls -gtGh --color=always | sed -re 's/^[^ ]* //'"
alias ll="ls -gtGhi --color=always | sed -re 's/(\-|d)[^ ]* //'"
#alias ll="ls -gtGhi --color=always"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias et='cd ~/git/ETSE_GDSP/src/'

#history
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"


#ssh
#alias sshttu='ssh -Y -l tsotne.putkaradze@intra.ttu.ee proksi.intra.ttu.ee'
#alias sshati='ssh -Y tsotne.putkaradze@intra@fx1'
alias sshstr='ssh -Y -C -c blowfish-cbc,arcfour tsotne@strudel.pld.ttu.ee'
alias sshpitsa='ssh -Y -C -c blowfish-cbc,arcfour tsotne@pitsa.pld.ttu.ee'
alias sshcomr='ssh root@162.243.43.46'
alias sshcomn='ssh tsotnep@162.243.43.46'
alias sshcom='ssh www-tsotnep@162.243.43.46'

#alias sshstr='ssh -Y -C tsotne@strudel.pld.ttu.ee'
#alias sshpitsa='ssh -Y -C tsotne@pitsa.pld.ttu.ee'


#git
alias commit='git commit -m'
alias uncommit='git reset HEAD^' #undo the act of committing and everything you'd staged, but leave the work tree (your files) intact
alias uncommits='git reset --soft HEAD^' #undo the act of committing, leaving everything else intact
alias uncommith='git reset --hard HEAD^' #throwing away all uncommitted changes, resetting everything to the previous commit
alias undouncommith='git reset HEAD@{1}'
alias cm='git commit -m"not important update of the code, moved a file, changed variable name, formatted the code or something simillar, no need for special message"'
alias push='git push'
alias pull='git pull'
alias log='git log'
alias status='git status'
alias st='git status'
alias sshadd='ssh-add ~/git/ssh/mykey'
alias amend='git commit --amend'
alias checkout='git checkout'
alias adda='git add ./ --all'
alias add='git add'
unadd() { git reset $1; } #remove added file while commiting
alias branch='git branch -v'
untrack() { git rm --cached $1; } #untrack already tracked file


#c++
alias g++='\g++ -std=c++11 -g'
#alias make='clear && make'
#alias make='make | egrep -i --color "\b(error)\b|$"'
#make() { make $1 $2 | egrep -i --color "\b(error)\b|$"; }
export fl='-pedantic -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Wno-unused'

#TOOLS
export PATH=$PATH:/matlab/bin/
export PATH=$PATH:/home/tsotne/Programs/idea-IC-143.1184.17/bin
export PATH=$PATH:/home/tsotne/Programs/java
export PATH=$PATH:/home/tsotne/Programs/cpp
export PATH=$PATH:/home/tsotne/Programs/sigasi


#VIVADO
alias svivadobin='source /opt/Xilinx/SDK/2015.2/settings64.sh'
alias svivadolic='export XILINXD_LICENSE_FILE=/opt/Xilinx/licences/vivado_system_edition.lic'
alias svivadolic1='export XILINXD_LICENSE_FILE=/opt/Xilinx/licences/crack_licence.lic'
alias svivadolic2='export XILINXD_LICENSE_FILE=1700@kama.pld.ttu.ee'
alias svivado='svivadobin && svivadolic'
alias vivado='svivado && \vivado -nolog -nojournal'

#ISE
alias sisebin='source /opt/Xilinx/14.7/ISE_DS/settings64.sh'
alias siselic='export XILINXD_LICENSE_FILE=/opt/Xilinx/licences/crack_licence.lic'
alias sise='sisebin && siselic'
alias ise='sise && \ise'
