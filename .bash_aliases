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
#alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -lA'
alias lt='ls -lt'
alias screenoff='xset -display :0.0 dpms force off'
alias gcc_='gcc -g -Wall -o'    #followed by "outname srcname.c"
alias grep="grep -i --color=tty"    # I always forget
alias df='df -h'        # human readable
alias du='du -h'
alias ZZ='exit' 
alias :q='exit'
alias disa='disown -a'
alias fork='urxvt & >/dev/null 2>&1; disown -a'
alias amend="git add .; git commit --amend"
alias clip="xclip -sel clip"
alias unbz="bzip2 -d"

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
alias n='nemo --no-desktop . >/dev/null 2>&1 &'
alias tweak='gnome-tweak-tool >/dev/null &>/dev/null &'
alias cl='clementine >/dev/null &>/dev/null &'
alias ch='~/programs/scripts/bash/chrome.sh'
alias gv='gvim -p --remote-tab-silent'
alias steam='steam >~/.steam/steam_log.txt &>~/.steam/steam_log.txt &'

#docker
alias dexec='docker exec -t -i'
alias dps='docker ps'
alias drmall='docker rm $(docker ps -a -q)'
alias dstopall='docker stop $(docker ps -a -q)'
alias drmiall='docker rmi $(docker images -q)'
alias dnew='docker run -d -p 8008:9080 -p 8009:9443 --name wlpTest websphere-liberty:latest'
alias clearimages="docker images | grep "wlp_" | awk '{print $1}' | xargs docker rmi"
alias dlogs='docker logs'

# microclimate etc
alias fwbash="dbash file-watcher"
alias fwlogs="dlbn file-watcher"
alias remc="cd ~/programs/microclimate; ./stop.sh; ./start.sh --dev; cd - >/dev/null"
alias remc2="cd ~/programs/microclimate; ./stop.sh; ./run.sh --dev; cd - >/dev/null"
alias rffw="cd ~/programs/microclimate/docker/file-watcher/server/; npm run pushLocal && echo 'RFFW success'; cd - >/dev/null"
alias vpj="vim package.json"
alias nrb="npm run build"
alias ns="npm start"
alias leclipse='/Applications/eclipse/jee-photon/Eclipse.app/Contents/MacOS/eclipse &'
alias loginToArtf='docker login sys-mcs-docker-local.artifactory.swg-devops.com'
alias deleteTestProjects="~/programs/fw-convinience/delete-projects.py localhost:9090 test -f"

# i3
alias lock='~/.config/i3lock/i3lock.sh &'
alias i3conf='~/.config/i3/config'
alias quiti3='i3-msg exit'

# Arch
alias pmi='sudo pacman -S'
alias pmup='sudo pacman -Syu'

# git
alias gstat='git status'
alias gadd='git add .'
alias gcom='git commit'
alias gcheck='git checkout'
alias gamend='git commit --amend --no-edit'
alias gdiff1='git diff HEAD~1 HEAD'
alias gcm='git checkout master && git pull origin master'
alias gpom='git pull origin master'
alias gdiff='git diff'
alias gd='git diff'
alias glog='git log'
