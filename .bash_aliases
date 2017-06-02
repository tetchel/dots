alias cs='clear'
alias showas='cat ~/.bash_aliases'
alias editas='vim ~/.bash_aliases'
alias re='exec bash'
alias untar='tar -xvf'        #followed by target .tar.gz
alias intar='tar -zxvf'        #followed by target .tar.gz then target directory
alias x='sudo chmod a+x'    #followed by filename
alias own='sudo chown tim'  #followed by filename
alias ps='ps -ax'
alias sdin='sudo shutdown -P'    #followed by number of minutes to wait, drop a & at the end:
alias t='top'
alias e='exit'
alias s='sudo pm-suspend'
alias su='sudo -i'
alias o='xdg-open'
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias lt='ls -lt --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias screenoff='xset -display :0.0 dpms force off'
alias gcc_='gcc -g -Wall -o'    #followed by "outname srcname.c"
alias grep="grep -i --color=tty"    # I always forget
alias df='df -h'        # human readable
alias du='du -h'
alias quiet=' > /dev/null 2>&1 &'
alias quickamend="git add .; git commit --amend; git push -f"

#navigation
alias ..='cd ./..'
alias ...='cd ./../..'
alias ....='cd ./../../..'
alias h='cd'
alias downs='cd ~/downloads'
alias docs='cd ~/documents'
alias music='cd ~/music'
alias pics='cd ~/pictures'
alias vids='cd ~/videos'
alias progs='cd ~/programs'
alias apps='cd /usr/share/applications'

#apt-get
alias agi='sudo apt-get install'
alias aar='sudo add-apt-repository'
alias agup='sudo apt-get upgrade; sudo apt-get update; sudo apt-get dist-upgrade'
alias agr='sudo apt-get remove'
alias cleanup='sudo apt-get autoremove; rm -rf ~/.local/share/Trash/*'
alias agpurge='sudo apt-get purge'

#applications
alias n='nautilus . &'
alias tweak='gnome-tweak-tool >/dev/null &>/dev/null &'
alias cl='clementine >/dev/null &>/dev/null &'
alias ch='~/programs/scripts/bash/chrome.sh'
alias gv='gvim -p --remote-tab-silent'
alias steam='steam >~/.steam/steam_log.txt &>~/.steam/steam_log.txt &'
alias leclipse='~/eclipse/launch_eclipse >/dev/null &>/dev/null &'

#docker
alias dexec='docker exec -t -i'
alias dps='docker ps -a'
alias drmall='docker rm $(docker ps -a -q)'
alias dstopall='docker stop $(docker ps -a -q)'
alias dnew='docker run -p 8008:9080 -p 8009:9443 --name wlpTest websphere-liberty:javaee7'

alias killib='sudo ~/programs/scripts/killiberty.sh'
alias vboxmnt='sudo ~/programs/scripts/vboxmnt.sh'

# i3
alias lock='~/.config/i3lock/i3lock.sh &'
alias i3conf='~/.config/i3/config'
# Arch
alias pmi='sudo pacman -S'
alias pmup='sudo pacman -Syu'

