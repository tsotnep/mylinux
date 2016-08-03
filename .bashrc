#other
alias c='cd'
alias gt='cd ~/git'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/git/mylinux/keyboardshortcuts'
alias lastchanges='find $HOME -cmin 0.25'
alias rreswifi='sudo service network-manager restart'
alias rres='sudo shutdown -r now'
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
alias minicom='picocom'
alias ter='gnome-terminal . &'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'

alias install='sudo apt-get install'

export PAGER="/usr/bin/most -s" #colorful manpages
export GREP_OPTIONS='--color=auto'

alias ll="ls -l"
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



#TOOLS
export PATH=$PATH:/matlab/bin/
export PATH=$PATH:/home/tsotne/Programs/idea-IC-143.1184.17/bin
export PATH=$PATH:/home/tsotne/Programs/java
export PATH=$PATH:/home/tsotne/Programs/cpp
export PATH=$PATH:/home/tsotne/Programs/sigasi

#ssh
#alias sshttu='ssh -Y -l tsotne.putkaradze@intra.ttu.ee proksi.intra.ttu.ee'
#alias sshati='ssh -Y tsotne.putkaradze@intra@fx1'
alias sshstr='ssh -Y -C -c blowfish-cbc,arcfour tsotne@strudel.pld.ttu.ee'
alias sshpitsa='ssh -Y -C -c blowfish-cbc,arcfour tsotne@pitsa.pld.ttu.ee'


#alias sshstr='ssh -Y -C tsotne@strudel.pld.ttu.ee'
#alias sshpitsa='ssh -Y -C tsotne@pitsa.pld.ttu.ee'


#git
alias add='git add'
alias adda='git add ./ --all'
alias commit='git commit -m'
alias cm='git commit -m"not important update of the code, moved a file, changed variable name, formatted the code or something simillar, no need for special message"'
alias push='git push'
alias pull='git pull'
alias log='git log'
alias status='git status'
alias sshadd='ssh-add ~/git/ssh/mykey'
alias amend='git commit --amend'
alias checkout='git checkout'

#c++
alias g++='\g++ -std=c++11 -g'
alias make='clear && make'
export fl='-pedantic -Wall -Wextra -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wswitch-default -Wundef -Wno-unused'

#VIVADO
alias svivadobin='source /opt/Xilinx/SDK/2015.2/settings64.sh'
alias svivadolic='export XILINXD_LICENSE_FILE=/opt/Xilinx/licences/vivado_system_edition.lic'
alias svivadolic2='export XILINXD_LICENSE_FILE=1700@kama.pld.ttu.ee'
alias svivado='svivadobin && svivadolic'
alias vivado='\vivado -nolog -nojournal'

#ISE
alias sisebin='source /opt/Xilinx/14.7/ISE_DS/settings64.sh'
alias siselic='export XILINXD_LICENSE_FILE=/opt/Xilinx/licences/crack_licence.lic'
alias sise='sisebin && siselic'
