## Config-local -- my configs and scripts

### About

These are the configs and scripts that I use. Mostly when setting up a new machine.

For the most part these are all dev related packages for various languages that I
play with. Remembering install information is the worst.

Also listed is some common information that I need for mysql and other packages.

### Usage

After installation, use the gem to install your dot files. Please see the below commands.

#### Available Commands

`install` -- will install the desired package
`list` -- lists available packages to install
`search` -- searches packages
`help` -- shows this list

#### Packages

Packages are what I use to install my dot files and configs. Each "package" has its
own directly within the "packages" folder. The gem also searches for packages in your
home directory.
Each package folder should contain an `information.json` file, this contains the
package description, name, and bash commands to install to run. It should also contain
any files the package needs to work.


##### Brew -- http://brew.sh/

Install brew, its the package manager that I use for mostly everything

* `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

##### RVM -- https://rvm.io/

RVM is my preferred Ruby Version Manager.

* `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
* `\curl -sSL https://get.rvm.io | bash -s stable`

##### SDKMan -- http://sdkman.io/

SDKMan is a great version manager for JVM languages and packages. Usually I use it
to install Grails, Groovy and Gradle.

* `curl -s "https://get.sdkman.io" | bash`
* `source "$HOME/.sdkman/bin/sdkman-init.sh"`

##### Stack -- http://haskellstack.org

Stack is what I use for Haskell packages.

* `brew install haskell-stack`
* `curl -sSL https://get.haskellstack.org/ | sh` -- alternative install method

##### MySQL

* Install mysql first `brew install mysql`
* SQL cnf file should be copied to `/usr/local/etc/my.cnf`
* SQL can be started by using `sudo mysql.server start` and stopped by using `sudo mysqld stop`

##### Git

* Git global ignore and config should be copied to `~/`
* Install the below script
`curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh`
