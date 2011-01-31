if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Set the prompt
PS1='\n\w$(__git_ps1 " (%s)")\n$ '


if [ -n "$SSH_CLIENT" ]
    then 
		PS1='\n\[\e[32m\u@\h\]\e[30;0m\] \w$(__git_ps1 " (%s)")\n$' 
fi                


# Make auto-completion case-insensitive
bind 'set completion-ignore-case on'


# Whenever you use the cd command, bash will check all the directories in the $CDPATH list for matches to the directory name.
# http://www.builderau.com.au/program/linux/soa/10-shortcuts-to-master-bash/0,339028299,339279043,00.htm
export CDPATH=".:~:~/www:~/work"

# see http://hivelogic.com/narrative/articles/using_usr_local
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export LC_CTYPE=en_US.UTF-8 


                              
export JSTESTDRIVER_HOME=~/bin

