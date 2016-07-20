#other
alias ccat='pygmentize -g'
alias bashrc='ccat ~/.bashrc'
alias bashrce='vim ~/.bashrc'
alias rm=trash
alias spwd="PS1='[\u@\h \W]\$ '"
alias minicom='picocom'
alias ter='gnome-terminal . &'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'

#TOOLS
export PATH=$PATH:/matlab/bin/
export PATH=$PATH:/home/tsotne/Programs/idea-IC-143.1184.17/bin
export PATH=$PATH:/home/tsotne/Programs/java
export PATH=$PATH:/home/tsotne/Programs/cpp
export PATH=$PATH:/home/tsotne/Programs/sigasi

#ssh
alias sshttu='ssh -Y -l tsotne.putkaradze@intra.ttu.ee proksi.intra.ttu.ee'
alias sshati='ssh -Y tsotne.putkaradze@intra@fx1'

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
