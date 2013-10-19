#!/bin/sh

random_ASCII

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

#bindkey -v
bindkey -e

# End of lines configured by zsh-newuser-install

#setopt correct
setopt MENU_COMPLETE
setopt PROMPT_SUBST
autoload colors
colors


# Enable colors for ls and grep
eval "`dircolors -b`"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias pacman='sudo apt-get install'
alias ls='ls --color=auto'
alias ll='ls -la'
alias ..='cd ..'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias jobs='jobs -l'
alias startx='startx&away "DONT TOUCH"'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T %a %d-%m-%Y"'
#alias now='date +"%T"'
#alias nowtime=now
#alias nowdate='date +"%d-%m-%Y"'

alias ports='netstat -tulanp'
alias suod='sudo'

# ## shortcut  for iptables and pass it via sudo#
# alias ipt='sudo /sbin/iptables'
#  
# # display all rules #
# alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
# alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
# alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
# alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
# alias firewall=iptlist



## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'































# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' format "%{${fg[cyan]}%}[%d]%{${fg[default]}%}"
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle :compinstall filename '/home/doek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


























bindkey "^[[3~"  delete-char
bindkey "^[3;5~" delete-char


#PROMPT = %n %~

#if [[ ${EUID} == 0 ]] ; then
#		PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
#	else
#		PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
#	fi







## vcs_info {{{
## vcs_info to get info about vcs like git
#autoload -Uz vcs_info
## Disable detection of vcs I don't use (enable only the ones I want)
##zstyle ':vcs_info:*' disable bzr cdv darcs mtn svk tla
#zstyle ':vcs_info:*' enable git cvs svn
##zstyle ':vcs_info:*' formats "(%s) %b %u%c"
#zstyle ':vcs_info:*' formats "[%b]%u%c "
#zstyle ':vcs_info:*' actionformats "[%b|%a]%u%c "
#zstyle ':vcs_info:*' check-for-changes true
#zstyle ':vcs_info:*' get-revision true
## }}}
#
## precmd and preexec {{{
## - preexec is executed before an command is executed, the command is passed as
##   first argument.
## - precmd is executed before the promps is displayed
## {{{
#precmd () {
#	# Sets $vcs_info_msg_*_ for prompt
#	vcs_info
#}
##}}}
##}}}
#
#
#
#
##penser a mettre %b apres fg_bold car default n'enleve pas bold
##PS1="%{${fg_bold[green]}%}%n@%m%b%{${fg[default]}%}:%{${fg[blue]}%}%~%{${fg[default]}%} %{${fg[cyan]}%}\${vcs_info_msg_0_}%{${fg[default]%}%}%# "
########PROMPT="%{${fg[green]}%}%~%{${fg[cyan]}%}\${vcs_info_msg_0_}%{${fg[green]}%}]%{${fg[default]%}%}"
##PROMPT='%d%>:%{\e[0m%} ' # default prompt
##PROMPT='%~]' # default prompt

PROMPT="%{${fg[green]}%}%~%{${fg[green]}%}]%{${fg[default]%}%}"

#poney_boot_lolcat
# vim: set foldmethod=marker :
