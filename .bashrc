#
# ~/.bashrc
#

# If not running interactively, don't do anything

#adding to PATH
[[ $- != *i* ]] && return
export PATH="${PATH}:/home/autumn/.local/bin"
export PATH="${PATH}:/home/autumn/.cargo/bin"

#PS edits
#default
#PS1='[\u@\h \W]\$ '

#Colored
PS1='\[\e[0;38;5;210m\][\[\e[0;38;5;215m\]\u\[\e[0;38;5;208m\]@\[\e[0;38;5;203m\]\h \[\e[0;38;5;203m\]\W\[\e[0;38;5;210m\]]\[\e[0m\]\$ \[\e[0m\]'

#Aliases
alias passgen="date +%s | sha256sum | base64 | head -c 32 ; echo"
alias config='/usr/bin/git --git-dir=/home/autumn/.cfg/ --work-tree=/home/autumn'
alias doom='~/.emacs.d/bin/doom'
alias ls='ls --color'
alias sublime='LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8 subl'
alias music='tmux new-session -s $$ "tmux source-file ~/.config/ncmpcpp/tsession" && tmux kill-session -a'
alias grep='grep --color'
alias vim='nvim'
alias jr='java'
alias jcr='~/Programming/bash/jcr.sh'
alias wifiConnect='~/Programming/bash/wifiConnect.sh'

#Set editor to neovim
export EDITOR=nvim

#Ascii Art
declare -i x=$((RANDOM % 10))
if (("$x" > 5))
then
	jp2a ~/Pictures/ralseiDefault.png --colors
	#for i in {1..3}; do echo; done

else
	jp2a ~/Pictures/starlight2.png --colors
	#for i in {1..5}; do echo; done
fi;
