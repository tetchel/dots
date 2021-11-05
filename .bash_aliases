alias cs='clear'
alias showas='cat ~/.bash_aliases'
alias editas='vim ~/.bash_aliases'
alias re='exec bash'
alias untar='tar -xvf'        #followed by target .tar.gz
alias intar='tar -zxvf'        #followed by target .tar.gz then target directory
alias x='chmod u+x'    
alias own='sudo chown tim'  #followed by filename
alias ps='ps -ax'
alias sdin='sudo shutdown -P'    #followed by number of minutes to wait, drop a & at the end:
alias t='top'
alias e='exit'
#alias s='sudo pm-suspend'
alias suspend='systemctl suspend'
alias su='sudo -i'
alias o='open'
#alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -lA'
alias lt='ls -lt'
alias screensoff='xset -display :0.0 dpms force off'
alias screenoff='xrandr --output eDP-1 --off'
alias gcc_='gcc -g -Wall -o'    #followed by "outname srcname.c"
#alias grep="grep -i --color=tty"    # I always forget
alias df='df -h'        # human readable
alias du='du -h'
alias ZZ='exit'
alias :q="echo 'this is not vim'"
alias disa='disown -a'
alias fork='urxvt & >/dev/null 2>&1; disown -a'
alias clip="xclip -selection c"
alias xclip="xclip -selection c"
alias unbz="bzip2 -d"
alias ipaddr="ifconfig en0 | grep inet | grep -v inet6 | column -t"

#navigation
alias ..='cd ./..'
alias ...='cd ./../..'
alias ....='cd ./../../..'
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

#yum
alias yi='sudo yum install -y'

#applications
alias n='nemo --no-desktop . >/dev/null 2>&1 &'
alias tweak='gnome-tweak-tool >/dev/null &>/dev/null &'
alias cl='clementine >/dev/null &>/dev/null &'
alias ch='~/programs/scripts/bash/chrome.sh'
alias gv='gvim -p --remote-tab-silent'
alias steam='steam >~/.steam/steam_log.txt &>~/.steam/steam_log.txt &'

#docker
alias d='docker'
alias dexec='docker exec -t -i'
alias dps='docker ps'
alias drmall='docker rm $(docker ps -a -q)'
alias dstopall='docker stop $(docker ps -a -q)'
alias dkillall='docker kill $(docker ps -q)'
alias drmiall='docker rmi $(docker images -q)'
alias dnew='docker run -d -p 8008:9080 -p 8009:9443 --name wlpTest websphere-liberty:latest'
alias clearimages="docker images | grep "wlp_" | awk '{print $1}' | xargs docker rmi"
alias dlogs='docker logs'

# i3
alias i3conf='vim ~/.config/i3/config'
alias blocksconf='gvim ~/.config/i3blocks/config'
alias quiti3='i3-msg exit'

# Arch
alias pmi='sudo pacman -S'
alias pmup='sudo pacman -Syu'

# git
alias gstat='git status'
alias gadd='git add -Av'
alias gamend='git commit --amend --no-edit --date "$(date)"'
alias gempty='git commit --amend --no-edit --allow-empty'
alias signoff='git commit --amend --no-edit -s'
alias gdiff1='git diff HEAD~1 HEAD'
alias gmaster='git checkout master && git pull upstream master'
alias gpum='git pull origin master'
alias gpom='git pull origin master'
alias gdiff='git diff'
alias gd='git diff'
alias gdc='git diff --cached'
alias glog='git log'
alias gc='git commit'
alias gcm='git commit -s -m'
alias gwipe='git reset --hard HEAD'
alias gs='git status'
alias gsa='git stash apply'
alias gheaddiff='git diff HEAD~1 HEAD'

#k8s
alias k='kubectl'
alias kfdel='kubectl delete po --force --grace-period=0'
alias buildtheia="yarn && cd examples/browser && notify 'starting theia' && yarn run start"
alias oc-use-sandbox="oc config use-context tetchell-code/api-member-crt-stage-com:6443/tetchell"

# Argo
alias argo-pw="kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2"
alias argo="argocd --server='localhost:8080' --insecure --plaintext"
#alias argo-stop="docker stop $(docker ps | grep argocd-test-tools | awk '{ print $1 }')"
alias argo-install="kubectl delete ns argocd; kubectl create ns argocd && kubectl apply -n argocd --force -f /Users/tim/go/src/github.com/argoproj/argo-cd/manifests/install.yaml"

alias rha="cd ~/src/redhat-actions"

alias chromedb="google-chrome --remote-debugging-port=9222 &"

alias ko='cd ~/src/go/src/github.com/tetchel/beeper/ && pwd && ./server'
