export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export JDK_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export M2_HOME=/usr/local/apache-maven-2.2.1
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:$GRAILS_HOME/bin:$GROOVY_HOME/bin:/usr/local/mysql/bin:/Users/michaelrobinson/bin:$M2_HOME/bin
export HISTCONTROL=ignoredups
export PS1='\h:\W$(__git_ps1 " {%s}") \u\$ ' # NO COLOUR

complete -C $HOME/dotfiles/public/bash/completion_scripts/thor_completion -o default thor
complete -C $HOME/dotfiles/public/bash/completion_scripts/grails_completion -o default grails
complete -C $HOME/dotfiles/public/bash/completion_scripts/ssh_completion -o default ssh
source $HOME/dotfiles/public/git/git-completion.bash

alias home="cd ~/"
alias audb="ssh -p 222 -L 3309:db03-lan.glo.siteminder.com:3306 mrobinson@services01.glo.siteminder.com"
alias ukdb="ssh -p 222 -L 3310:db04-lan.glo.siteminder.com:3306 mrobinson@services01.glo.siteminder.com"
alias devdb="ssh -p 222 -L 10000:db01.dev.siteminder.com:3306 mrobinson@services01.glo.siteminder.com"

# ---------------------------------------------------------------

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ---------------------------------------------------------------

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/michaelrobinson/.gvm/bin/gvm-init.sh" ]] && source "/Users/michaelrobinson/.gvm/bin/gvm-init.sh"
eval "$(rbenv init -)"
export PATH=/Users/michaelrobinson/.gvm/springboot/current/bin:/Users/michaelrobinson/.gvm/lazybones/current/bin:/Users/michaelrobinson/.gvm/groovyserv/current/bin:/Users/michaelrobinson/.gvm/groovy/current/bin:/Users/michaelrobinson/.gvm/griffon/current/bin:/Users/michaelrobinson/.gvm/grails/current/bin:/Users/michaelrobinson/.gvm/gradle/current/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/mysql/bin:~/bin/

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
