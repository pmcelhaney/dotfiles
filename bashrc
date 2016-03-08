# Show the git branch and status in the prompt
# http://superuser.com/questions/31744/how-to-get-git-completion-bash-to-work-on-mac-os-x
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

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
export CDPATH=".:~:~/www:~/code"

# see http://hivelogic.com/articles/using_usr_local/
export PATH=".:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/patrick/bin:/Users/patrick/.gem/ruby/1.8/bin:/Applications/Browsers:$PATH"
export LC_CTYPE=en_US.UTF-8
export PATH=~/bin:$PATH


alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app"'
alias scrum='node ~/scrum/scrum.js'

# https://www.npmjs.org/package/phantomjs
export PHANTOMJS_CDNURL=http://cnpmjs.org/downloads


#http://www.mkyong.com/java/maven-java_home-is-not-defined-correctly-on-mac-osx/
export JAVA_HOME=$(/usr/libexec/java_home)

export HTTP_PROXY="http://local-http-proxy:8888"
export HTTPS_PROXY="http://local-http-proxy:8888"
