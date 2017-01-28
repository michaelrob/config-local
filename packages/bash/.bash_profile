export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export JDK_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export M2_HOME=/usr/local/apache-maven-2.2.1
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:$GRAILS_HOME/bin:$GROOVY_HOME/bin:/usr/local/mysql/bin:/Users/michaelrobinson/bin:$M2_HOME/bin
export HISTCONTROL=ignoredups
export PS1='\h:\W$(__git_ps1 " {%s}") \u\$ ' # NO COLOUR

complete -C $HOME/scripts/thor_completion -o default thor
complete -C $HOME/scripts/grails_completion -o default grails
complete -C $HOME/scripts/ssh_completion -o default ssh
source $HOME/scripts/git-completion.bash

alias home="cd ~/"

# ---------------------------------------------------------------

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ---------------------------------------------------------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/michaelrobinson/.sdkman"
[[ -s "/Users/michaelrobinson/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/michaelrobinson/.sdkman/bin/sdkman-init.sh"
