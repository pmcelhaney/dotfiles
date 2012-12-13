# Show the git branch and status in the prompt 
# http://superuser.com/questions/31744/how-to-get-git-completion-bash-to-work-on-mac-os-x

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
PS1='\n\w$(__git_ps1 " (%s)")\n$ '




if [ -n "$SSH_CLIENT" ]
    then 
		PS1='\n\[\e[32m\u@\h\]\e[30;0m\] \w$(__git_ps1 " (%s)") [$(t | wc -l | sed -e's/ *//')]\n$' 
fi                


# Make auto-completion case-insensitive
bind 'set completion-ignore-case on'


# Whenever you use the cd command, bash will check all the directories in the $CDPATH list for matches to the directory name.
# http://www.builderau.com.au/program/linux/soa/10-shortcuts-to-master-bash/0,339028299,339279043,00.htm
export CDPATH=".:~:~/www:~/work"

# see http://hivelogic.com/narrative/articles/using_usr_local
export PATH=".:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/patrick/bin:/Users/patrick/.gem/ruby/1.8/bin:/Applications/Browsers:$PATH"
export LC_CTYPE=en_US.UTF-8 


                              
export JSTESTDRIVER_HOME=~/bin

# http://stevelosh.com/projects/t/
alias t='python /usr/bin/t/t.py --task-dir ~/tasks --list tasks'
alias b='python /usr/bin/t/t.py --task-dir $(git rev-parse --show-toplevel) --list todo'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH=~/bin:$PATH

export PATH=$HOME/local/node/bin:$PATH
export NODE_PATH=$HOME/local/node:$HOME/local/node/lib/node_modules   


eval "$(rbenv init -)"
