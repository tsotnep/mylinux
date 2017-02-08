######################################### B A S H  C O N F I G
export TIME_STYLE=long-iso
#export PAGER="most"
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


####################################### S H O R T C U T S


alias conv_PDFtoGray='convert -density 600 -colorspace gray'
alias rm=trash
alias cp='cp -i'
alias mv='mv -i'

#alias cp='\rsync -vraP --info=progress2'
#alias mv='\rsync -vraP --info=progress2 --remove-sent-files'

alias rsync='\rsync -avzcrlP' 
#alias mv='\rsync -avzcrlP --info=progress2 --partial --progress --append --rsh=ssh -r -h --remove-sent-files' #archive, verbose, compress, checksum, recursive, links,
#alias cp='\rsync -avzcrlP --info=progress2 --partial --progress --append --rsh=ssh -r -h' #archive, verbose, compress, checksum, recursive, links,


alias ln='ln -i'
alias sz='du -sh'

alias tail='grc tail -f'
alias classstatus='google-chrome http://ati.ttu.ee/klassi-staatus/'
alias ccopyprev='echo !! | xclip'
alias rreswifi='sudo service network-manager restart'
alias rrescinammon='sudo killall -HUP cinnamon && cinnamon --replace :0'
alias install_basic_soft='sudo apt install -y pydf inxi ack-grep pydf picocom python-pygments xclip rsync vim tmux'
alias tmuxe='vim ~/.tmux.conf'
alias reloadtmux='tmux source ~/.tmux.conf'
alias reload='exec bash'
alias cat='pygmentize -g'
alias diff='colordiff'
alias bashrc='cat ~/.bashrc'
alias al='cat ~/.bash_aliases'
alias ale='vim ~/.bash_aliases'

alias bashrce='vim ~/.bashrc'

alias vimrce='vim ~/.vimrc'

alias spwd="PS1='[\u@\h \W]\$ '"
alias spwd1="PS1='[\W]\$ '"
alias spwd2="PROMPT_DIRTRIM=1"

#alias ll="ls -gtGhi --time-style long-iso --color=always | sed -re 's/(\-|d)[^ ]* //'"

alias ll="lll"
alias li="lli"
alias lr="llr"
alias lir="llir"
alias la="lla"
lll(){ 
  \ls -lsgtGhi --color=always  | awk '{printf "%5s %5s %s %s \n",$6,$7,$8,$9}';
}

lli(){ 
  \ls -lsgtGhi --color=always | awk '{printf "%7s %5s %5s %s %s \n",$1,$6,$7,$8,$9}';
}

llr(){ 
  \ls -lsgtGhi --color=always | awk '{printf "%10s %5s %5s %s %s \n",$3,$6,$7,$8,$9}';
}

llir(){ 
  \ls -lsgtGhi --color=always | awk '{printf "%7s %10s %5s %5s %s %s \n",$1,$3,$6,$7,$8,$9}';
}
lla(){ 
  \ls -lsgtGhia --color=always | awk '{printf "%5s %5s %s %s \n",$6,$7,$8,$9}';
}



alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias lvim='vim -c "normal '\''0"'  #open last vim
alias shtdwn='sudo shutdown -H now'
alias make='clear && make'
alias g++='\g++ -std=c++11 -g'
alias xclip='\xclip -selection c'
alias cat='pygmentize -g'
alias ter='gnome-terminal'
alias minicom='picocom'
alias lastchanges='sudo find $HOME -cmin 0,1'
alias mkdir='mkdir -p -v'
alias cad='tcsh'

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

################################################################################ MY-PC specific
alias vpnati='openvpn --config ~/ownCloud/workspace/vpn/openvpn/client.ovpn'
alias shortcuts='cat ~/ownCloud/git/mylinux/shortcuts'
alias shortcutse='vim ~/ownCloud/git/mylinux/shortcuts'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/ownCloud/git/mylinux/keyboardshortcuts'
alias sshgenkey='ssh-keygen -t rsa -C "tsotnep@gmail.com"'
alias sshadd='ssh-add ~/.ssh/id_rsa'
alias mylinux='cd ~/ownCloud/git/mylinux/'
alias ow='cd ~/ownCloud/'
alias gt='cd ~/ownCloud/git'
alias ws='cd ~/ownCloud/workspace'







################################################################################ I N F O
alias info_IPMAC='ifconfig'
alias info_Shell='ps -p $$'
alias info_Linux='
echo
echo Window manager::: && 
wmctrl -m && 
echo
echo GUI::: && 
echo XDG_CURRENT_DESKTOP = $XDG_CURRENT_DESKTOP && 
echo GDMSESSION = $GDMSESSION && 
echo
echo Distro::: && 
\cat /etc/*-release'
alias info_PC='inxi -Fx && sudo dmidecode --type 17'
alias info_Storage='pydf'

######################################### S S H
alias ssh_ttu='ssh -Y -l tsotne.putkaradze@intra.ttu.ee proksi.intra.ttu.ee'
alias ssh_ati='ssh -Y tsotne.putkaradze@intra@fx1'
alias ssh_str='ssh -Y -C -c blowfish-cbc,arcfour tsotne@strudel.pld.ttu.ee'
alias ssh_pitsa='ssh -Y -C -c blowfish-cbc,arcfour tsotne@pitsa.pld.ttu.ee'
alias ssh_vineeripirukas='ssh -Y -C -c blowfish-cbc,arcfour tsotne@193.40.246.42'
alias ssh_fpga16='ssh -Y -C -c blowfish-cbc,arcfour tsotne@193.40.246.130'



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
alias picocom_noc='\picocom -e x -b 57600 /dev/ttyUSB0'
alias picocom_etse='\picocom -e x -b 115200 /dev/ttyACM0'


############################################################################### S C R I P T S
countfilesrec() { find $1 -type f | wc -l; }
countfiles() { find $1 -type f -maxdepth 1 | wc -l; }
picocom_script() { d=`date +%d_%m_%Y_%H_%M_%S`; old="$IFS"; IFS='_'; mkdir ~/ownCloud/workspace/picocom/; script -f -c 'sudo \picocom -e x -b 115200 /dev/ttyACM0' ~/ownCloud/workspace/picocom/log_"$d"_"'$*'"; IFS=$old; }
exists() {
    if [ ! -f $1 ]; then
        echo "File not found!"
    else
        echo "File exists!"
    fi
}
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
mkdirc() {
    mkdir $1;
    cd $1;
}

mylinux_install(){
    cd ~/ownCloud/git/mylinux;
    bash install.sh;
}

mylinux_install_edit(){
    cd ~/ownCloud/git/mylinux;
    vim install.sh;
} 

mylinux_push() {
    cd ~/ownCloud/git/mylinux;
    if ! ssh-add -l >/dev/null; then
      sshadd;
    fi
    adda;
    commit "msg: $1";
    push;
}

mylinux_pull() {
    cd ~/ownCloud/git/mylinux;
    pull;
}

mylinux_open(){
  google-chrome https://github.com/tsotnep/mylinux
}

mylinux_update_installed() {
#update the packages_full with a list of ubstalled packages in the system
    comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > ~/ownCloud/git/mylinux/packages_full;
}

clean_home(){
cd ~/

#vivado
rm vivado.*
rm webtalk.*
rm *.log
rm *.jou
rm output.txt
rm output_results.txt
rm lspci
rm transcript

#design vision
rm *.syn
rm *.mr
rm *.svf
rm ARCH
rm ENTI
rm synopsys_cache*

#modelsim
rm vsim.*
rm *.mti
rm *.mpf

}

ssh_create(){
cd 
ssh-keygen -t rsa -C "tsotnep@gmail.com"
}
