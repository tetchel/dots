#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

export EDITOR=/usr/bin/vim

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

# Load my custom colouring file
[[ -f ~/.bash_custom ]] && . ~/.bash_custom

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#git_ac=/opt/local/etc/bash_completion.d/git-completion.bash
git_ac=~/programs/clones/git-completion.bash
#echo $git_ac
[[ -f $git_ac ]] && . "$git_ac"

# PATH additions
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:~/bin"
export PATH="$PATH:$HOME/.yarn/bin"
export ARGOCD_API_URL="http://[::1]:8080"

export SELENIUM_BROWSER=chrome
set editing-mode vi

# NVM
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"
# nvm use 12

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin"
export GOPATH="$HOME/src/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/snap/bin/"
export PATH="$PATH:/home/tim/.local/bin"

# export MSBuildSDKsPath=/usr/share/dotnet/sdk/$(dotnet --version)/Sdks

if [[ $(command -v xset) ]]; then
    xset b off
fi
alias ic="ibmcloud"
