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
white='\e[1;37m'
yellow='\e[1;33m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'

blue='\e[0;34m'
lightblue='\e[1;34m'

green='\e[0;32m'
lightgreen='\e[1;32m'

red='\e[0;31m'
lightred='\e[1;31m'

cyan='\e[0;36m'
lightcyan='\e[1;36m'

purple='\e[0;35m'
lightpurple='\e[1;35m'

nc='\e[0m'


############## T O D O
# copy_to_my_pc scp compile_simlib.tar.gz tsotne@193.40.246.42:~/workspace/vivado/


####################################### S H O R T C U T S


alias conv_PDFtoGray='convert -density 600 -colorspace gray'
alias rm=trash
if (( uname -n == 'strudel')); then alias rm='rm'; fi
#alias cp='cp -i'
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
if (( uname -n == 'strudel')); then alias cat='cat'; fi
alias diff='colordiff'
alias bashrc='cat ~/.bashrc'
alias al='cat ~/.bash_aliases'
alias ale='vim ~/.bash_aliases'
alias cshrce='vim ~/ownCloud/linux_base/mylinux/csh.cshrc'

alias bashrce='vim ~/.bashrc'

alias vimrce='vim ~/.vimrc'
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

webmount(){
  sudo sshfs root@tsotnep.com:/var/www/ /media/web/www -o follow_symlinks,allow_other,IdentityFile=/home/tsotne/.ssh/id_rsa;
  sudo sshfs root@tsotnep.com:/etc/nginx/ /media/web/nginx -o follow_symlinks,allow_other,IdentityFile=/home/tsotne/.ssh/id_rsa;

}

alias webrel="sudo nginx -t && sudo systemctl reload nginx"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias lvim='vim -c "normal '\''0"'  #open last vim
alias shtdwn='sudo shutdown -H now'
alias make='clear && make'
alias g++='\g++ -std=c++11 -g'
alias xclip='\xclip -selection c'
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
alias shortcuts='cat ~/ownCloud/linux_base/mylinux/shortcuts'
alias shortcutse='vim ~/ownCloud/linux_base/mylinux/shortcuts'
alias keyboardshortcutupdate='dconf dump /org/cinnamon/ > ~/ownCloud/linux_base/mylinux/keyboardshortcuts'
alias sshgenkey='ssh-keygen -t rsa -C "tsotnep@gmail.com"'
alias sshadd='ssh-add ~/.ssh/id_rsa'
alias mylinux='cd ~/ownCloud/linux_base/mylinux/'
alias ow='cd ~/ownCloud/'
alias gt='cd ~/ownCloud/linux_base'
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
alias ssh_str='ssh -Y -C tsotne@strudel.pld.ttu.ee'
alias ssh_pitsa='ssh -Y -C tsotne@pitsa.pld.ttu.ee'
alias ssh_vineeripirukas='ssh -Y -C tsotne@193.40.246.42'
alias ssh_fpga16='ssh -Y -C tsotne@193.40.246.130'
alias ssh_present='ssh -Y -C presentation@193.40.246.127'


######################################### G I T
alias stash='git stash'
alias amend='git amend'
alias gdiff='git diff'
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
gitstorepass() { git config credential.helper cache; git config credential.helper "cache –timeout 30758400"; } #store pass for a year.



picocom_noc() { sudo chmod a+rw /dev/ttyUSB0;  \picocom -e x -b 57600 /dev/ttyUSB0; }
picocom_etse() { sudo chmod a+rw /dev/ttyACM0; \picocom -e x -b 115200 /dev/ttyACM0; }

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
    cd ~/ownCloud/linux_base/mylinux;
    bash install.sh;
}

mylinux_install_edit(){
    cd ~/ownCloud/linux_base/mylinux;
    vim install.sh;
}

mylinux_push() {
    cd ~/ownCloud/linux_base/mylinux;
    if ! ssh-add -l >/dev/null; then
      sshadd;
    fi
    adda;
    commit "msg: $1";
    push;
}

mylinux_pull() {
    cd ~/ownCloud/linux_base/mylinux;
    pull;
}

mylinux_open(){
  google-chrome https://github.com/tsotnep/mylinux
}

mylinux_update_installed() {
#update the packages_full with a list of ubstalled packages in the system
    comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u) > ~/ownCloud/linux_base/mylinux/packages_full;
}

clean(){
mkdir -p ~/.local/share/Trash/files
#vivado
mv -vf vivado*.* ~/.local/share/Trash/files
mv -vf webtalk.* ~/.local/share/Trash/files
mv -vf *.log ~/.local/share/Trash/files
mv -vf *.jou ~/.local/share/Trash/files
mv -vf output.txt ~/.local/share/Trash/files
mv -vf output_results.txt ~/.local/share/Trash/files
mv -vf lspci ~/.local/share/Trash/files
mv -vf transcript ~/.local/share/Trash/files
mv -vf .Xil ~/.local/share/Trash/files
mv -vf xsim.dir ~/.local/share/Trash/files
mv -vf xelab.pb ~/.local/share/Trash/files

#design vision
mv -vf *.syn ~/.local/share/Trash/files
mv -vf *.mr ~/.local/share/Trash/files
mv -vf *.svf ~/.local/share/Trash/files
mv -vf ARCH ~/.local/share/Trash/files
mv -vf ENTI ~/.local/share/Trash/files
mv -vf synopsys_cache* ~/.local/share/Trash/files

#modelsim
mv -vf vsim.* ~/.local/share/Trash/files
mv -vf *.mti ~/.local/share/Trash/files
mv -vf *.mpf ~/.local/share/Trash/files

#ommpvis
mv -vf innovus.cmd ~/.local/share/Trash/files
mv -vf genus.cmd ~/.local/share/Trash/files
mv -vf innovus.logv ~/.local/share/Trash/files
}

ssh_create(){
cd
ssh-keygen -t rsa -C "tsotnep@gmail.com"
}

alias spwd2="PS1='${lightgreen}[\u@\h \W]\$ ${nc} '"
alias spwd1="PS1='${lightgreen}[\W]\$ ${nc}'"
alias spwd="PROMPT_DIRTRIM=1"
