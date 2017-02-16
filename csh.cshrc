#####################################################################
#
# .cshrc file
#
# initial setup file for both interactive and noninteractive C-Shells
#
#####################################################################

alias cd            'cd \!*;echo $cwd'
alias cp            'cp -i'
alias mv            'mv -i'
alias rm            'rm -i'
alias pwd           'echo $cwd'
alias del           'rm -i'


if ( ! ${?TERM} ) then
 setenv TERM vt100
endif

# Set openwin as my default window system
set mychoice=openwin
setenv LOCPATH $PATH
#setenv WINDOWMANAGER /usr/openwin/bin/olvwm
setenv LD_LIBRARY_PATH /usr/openwin/lib

# add directories for local commands
if ( ${?REMOTEHOST} ) then
 set lpath = ( )
else
 set lpath = ( $path )
endif

if ( ${?mychoice} != 0 ) then
        if ( ${mychoice} == "openwin" ) then
                set lpath = ( /usr/openwin/bin $lpath )
        endif
endif

set path = ( $lpath /usr/sbin /bin /usr/local/bin /usr/bin /usr/ccs/bin /opt/SUNWspro/bin /home/kjans/bin)

if ( ! ${?MANPATH} ) then
 setenv MANPATH /usr/man:/usr/local/man
endif


#---------------- 8 bits ------------------------

tty -s
if ($status == 0) stty cs8 -istrip -parenb

setenv LANG C
setenv LC_CTYPE iso_8859_1

#------------------------------------------------

set noclobber

if ( ! ${?PATH} ) then
 setenv PATH /bin:/sbin:/usr/bin:/usr/sbin:/usr/ccs/bin
endif


## uncomment following line if you want to use Java Developement Kit
setenv JDK16

##################### DO NOT DELETE FOLLOWING ######################

if ( ${TERM} == "xterm" || ${TERM} == "dtterm" || ${TERM} == "xterm-color" || ${TERM} == "xterm-256color" || ${TERM} == "screen-256color" ) then
 source /cad/cadrc.include
 set LC_ALL='en_US.UTF-8'
endif

################### YOU MAY DELETE FOLLOWING #######################

####################################################################
#         aliases for all shells


#         your global umask
umask 022

#         skip remaining setup if not an interactive shell
if ($?USER == 0 || $?prompt == 0) exit

#          settings  for interactive shells

set autologout=0
set history=512
set ignoreeof
set notify
set savehist=512
#          commands for interactive shells

#date
#pwd

#         other aliases

#alias a            alias
#alias h            'history \!* | head -39 | more'
#alias u            unalias

#alias            clear
#alias list         cat
#alias lock         lockscreen
#alias m            more
#alias mroe         more
#alias type         more

#alias .            'echo $cwd'
#alias ..           'set dot=$cwd;cd ..'
#alias ,            'cd $dot '

alias dir           ls -l
#alias pdw          'echo $cwd'
#alias la           'ls -a'
#alias ll           'ls -la'
#alias ls           'ls -F'
alias  l	    ls -l

#alias pd           dirs
#alias po           popd
#alias pp           pushd

#alias +w           'chmod go+w'
#alias -w           'chmod go-w'
#alias x            'chmod +x'

#alias j            'jobs -l'

alias bye           logout
alias ciao          logout
alias adios         logout

#alias psg          'ps -ax | grep \!* | grep -v grep'
#alias punt         kill

#alias r            rlogin
#alias run          source

#alias nms 'tbl \!* | nroff -ms | more'                  # nroff -ms
#alias tms 'tbl \!* | troff -t -ms >! troff.output &'    # troff -ms
#alias tpr 'tbl \!* | troff -t -ms | lpr -t &'           # troff & print
#alias ppr 'lpr -t \!* &'                                # print troffed

#alias edit         textedit

alias help          man
#alias key          'man -k'

alias mkae          make


alias grep          'grep --color=auto'
alias more          'less'
alias df            'df -h'
alias du            'du -c -h'
alias mkdir         'mkdir -p -v'
alias nano          'nano -w'
alias ping          'ping -c 5'
alias fssh          'ssh -YC -c blowfish-cbc,arcfour'
alias vinoverde		'ssh -YC -c blowfish-cbc,arcfour karl@vinoverde'

alias makezip	    'zip -r9'
alias maketar       'tar -pczf'
alias makebz2       'tar -cvjf'
alias makerar       'rar a'

alias ls            'ls -hF --color=auto'
alias lr            'ls -R'                    # recursive ls
alias ll            'ls -lh'
alias la            'll -A'
alias lx            'll -BX'                   # sort by extension
alias lz            'll -rS'                   # sort by size
alias lt            'll -rt'                   # sort by date

alias v0	    'vivado > /dev/null &'

alias bt 	    'bootgen -image output.bif -o i'

# Git
alias git-cl       'git clone'
alias git-ch-out   'git checkout'
alias git-u        'git add -u'
alias git-a        'git add .'
alias git-rm       'git rm'
alias git-cmt      'git commit -m'
alias git-psh      'git push'
alias git-pl       'git pull'


#that will work, but cad scripts are unsetting those variables
#echo 'setenv SWT_GTK3 0'
#echo 'setenv LC_ALL en_US.UTF-8'

alias vivado	   'setenv SWT_GTK3 0 && setenv LC_ALL en_US.UTF-8 && /cad/x_16/Vivado/2016.1/bin/vivado'
#alias vivado	   'setenv LC_ALL en_US.UTF-8 && /cad/x_16/Vivado/2016.1/bin/vivado' #does not wrok

alias ams_cds      'setenv SWT_GTK3 0 && setenv OA_UNSUPPORTED_PLAT linux_rhel50_gcc44x && /cad/dk/c/v4.11/cds/bin/ams_cds'

# Colors!
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set   lightgreen="%{\033[1;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

# Setting the actual prompt.  I made two separate versions for you to try, pick
# whichever one you like better, and change the colors as you want.  Just don't
# mess with the ${end} guy in either line...  Comment out or delete the prompt you don't use.

#set prompt="${green}%n${blue}@%m ${white}%~ ${green}%%${end} "
#set prompt="[${green}%n${green}@%m ${white}(tcsh)%~ ]${end} "
set prompt="${lightgreen}%n${lightgreen}@%m ${red}(tcsh)${blue}%~ ${end} "

# Clean up after ourselves...
unset red green yellow blue magenta cyan yellow white end


#set prompt="%m:%/%#"
#set prompt="`hostname`{`whoami`}\!: "
#set prompt="%{\e[32;1m%}%n@%m (tcsh) %{\e[34;1m%} %~ $ %{\e[37;m%} "
#set time=100


