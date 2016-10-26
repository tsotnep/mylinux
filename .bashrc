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
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'



#PC Specific
alias vpnati='openvpn --config /home/tsotne/Documents/openvpn/client.ovpn'
alias shortcuts='ccat ~/git/mylinux/shortcuts'
alias shortcutse='vim ~/git/mylinux/shortcuts'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/git/mylinux/keyboardshortcuts'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'
alias sshadd='ssh-add ~/git/ssh/mykey'


#SHORTCUTS
alias ccopyprev='echo !! | xclip'
alias rreswifi='sudo service network-manager restart'
alias rrescinammon='sudo killall -HUP cinnamon'
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
alias rres='sudo shutdown -r now'
alias shtdwn='sudo shutdown -H now'
alias make='clear && make'
alias g++='\g++ -std=c++11 -g'
alias rsync='\rsync -avzcrl' #archive, verbose, compress, checksum, recursive, links,
alias xclip='\xclip -selection c'
alias ccat='pygmentize -g'
alias ter='gnome-terminal'
alias minicom='picocom'
alias lastchanges='sudo find $HOME -cmin 0.1'
alias mkdir='mkdir -p -v'
alias cad='tcsh'

alias install='sudo apt-get install'
alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-cache'
alias apti='apt-get install'
alias aptu='apt-get update'
alias aptU='apt-get upgrade'
alias aptdU='apt-get dist-upgrade'
alias aptr='apt-get remove'
alias aptar='apt-get autoremove'
alias aptp='apt-get purge'
alias apts='apt-cache search'

alias hist='history | grep'
alias makezip='zip -r9'
alias maketar='tar -pczf'
alias makebz2='tar -cvjf'
alias makerar='rar a'

alias rm=trash
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'




################################################################################INFO
alias info_IPMAC='ifconfig'
alias info_Shell='ps -p $$'
alias info_Linux='cat /etc/*-release'
alias info_PC='inxi -Fx'
alias info_Storage='pydf'


###############################################################################SCRIPTS
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
upinfo () { echo -ne "${green}$HOSTNAME's ${red}uptime is:${cyan}\t ";uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10}'; echo -ne "${red}Today is:\t\t${cyan}" `date`; echo ""; }
extract()
{
if [ -f "$1" ] ; then
    case "$1" in
    *.tar.bz2) tar xjf "$1" ;;
    *.tar.gz) tar xzf "$1" ;;
    *.tar.Z) tar xzf "$1" ;;
    *.bz2) bunzip2 "$1" ;;
    *.rar) unrar x "$1" ;;
    *.gz) gunzip "$1" ;;
    *.jar) unzip "$1" ;;
    *.tar) tar xf "$1" ;;
    *.tbz2) tar xjf "$1" ;;
    *.tgz) tar xzf "$1" ;;
    *.zip) unzip "$1" ;;
    *.Z) uncompress "$1" ;;
    *) echo "'$1' cannot be extracted." ;;
    esac
else
    echo "'$1' is not a file."
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




