#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Make colorcoding available for everyone

Black='\[\e[0;30m\]'	# Black
Red='\[\e[0;31m\]'	# Red
Green='\[\e[0;32m\]'	# Green
Yellow='\[\e[0;33m\]'	# Yellow
Blue='\[\e[0;34m\]'	# Blue
Purple='\[\e[0;35m\]'	# Purple
Cyan='\[\e[0;36m\]'	# Cyan
White='\[\e[0;37m\]'	# White

# Bold
BBlack='\[\e[1;30m\]'	# Black
BRed='\[\e[1;31m\]'	# Red
BGreen='\[\e[1;32m\]'	# Green
BYellow='\[\e[1;33m\]'	# Yellow
BBlue='\[\e[1;34m\]'	# Blue
BPurple='\[\e[1;35m\]'	# Purple
BCyan='\[\e[1;36m\]'	# Cyan
BWhite='\[\e[1;37m\]'	# White

# Background
On_Black='\[\e[40m\]'	# Black
On_Red='\[\e[41m\]'	# Red
On_Green='\[\e[42m\]'	# Green
On_Yellow='\[\e[43m\]'	# Yellow
On_Blue='\[\e[44m\]'	# Blue
On_Purple='\[\e[45m\]'	# Purple
On_Cyan='\[\e[46m\]'	# Cyan
On_White='\[\e[47m\]'	# White

NC='\[\e[m\]'		# Color Reset

ALERT="${BWhite}${On_Red}" # Bold White on red background

# Set PATH so it includes user's private bin directories
PATH="${HOME}/bin:${HOME}/.local/bin:${PATH}"

# Set prompt
#PS1="${Yellow}\u@\h${NC}: ${Blue}\w${NC} \\$ "
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Moje
export EDITOR=nano
export VISUAL=kate

# Useful aliases
alias sudo='sudo '
alias c='clear'
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ifconfig.co'
alias grep='grep --color=auto'
alias nano='nano --rcfile ~/.config/nano/nanorc'
alias ls='exa --group-directories-first --icons'
alias ll='exa -la --group-directories-first --icons'
alias vim='nvim'

if [[ $TERM == "xterm-kitty" ]]; then
   alias ssh="kitty +kitten ssh"
fi

if [[ $XDG_CURRENT_DESKTOP == "Hyprland" ]]; then
    neofetch
fi

if [[ ! -n ${SSH_CONNECTION} ]]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
fi
