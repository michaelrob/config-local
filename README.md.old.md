## Config-local -- my configs and scripts

### About

These are the configs and scripts that I use. Mostly when setting up a new machine.

Also listed is some common information that I need for mysql and other packages.

### Installation

* `ruby install.rb`

#### Brew -- http://brew.sh/

Install brew, its the package manager that I use for mostly everything

* `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

#### RVM -- https://rvm.io/

RVM is my preferred Ruby Version Manager.

* `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
* `\curl -sSL https://get.rvm.io | bash -s stable`

#### SDKMan -- http://sdkman.io/

SDKMan is a great version manager for JVM languages and packages. Usually I use it
to install Grails, Groovy and Gradle.

* `curl -s "https://get.sdkman.io" | bash`
* `source "$HOME/.sdkman/bin/sdkman-init.sh"`

#### MySQL

* Install mysql first `brew install mysql`
* SQL cnf file should be copied to `/usr/local/etc/my.cnf`
* SQL can be started by using `sudo mysql.server start` and stopped by using `sudo mysqld stop`

#### Git

* Git global ignore and config should be copied to `~/`
