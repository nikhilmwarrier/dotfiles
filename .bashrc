# ------ Welcome message ------
# echo -e "\"Yes, do as I say\"\n\t~ Linus Sebastian c.2022"
fortune | cowsay | lolcat
# ------ End Welcome message ------


# vi mode
set -o vi
bind -m vi-insert "\C-l":clear-screen

# AUTORUN
~/scripts/autorun

# ------ ALIASES ------
alias cl=clear
alias v=nvim
alias cdl="cd \$(llama)"        # open with llama file manager 
alias mkd="mkdir -pv"           # create parent directories + provide feedback
# alias ls="ls --group-directories-first -h"
# alias la="ls --group-directories-first -lAh"
alias ls="exa --icons --group-directories-first -s=name -ah"
alias la="exa --icons --group-directories-first -s=name -lah"
alias rebash="source ~/.bashrc"
alias rm="rm -i"                # confirm before delete
alias mv="mv -i"                # confirm before move
alias yeet="mv -t $HOME/.trash" # yeet
# ------ END ALIASES ------

# ------ VARIABLES ------
export PATH="$PATH:$HOME/.local/bin:$HOME/scripts"
export EDITOR="nvim"
# ------ END VARIABLES ------

eval "$(thefuck --alias)"       # set f*** alias

# ------ CUSTOM PROMPT ------
# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[1;36m\]\w\[\e[m\] \[\e[1;35m\]\`parse_git_branch\`\[\e[m\]: \[\e[1;32m\]\[\e[m\] "
# ------ END CUSTOM PROMPT ------

