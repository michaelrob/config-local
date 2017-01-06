#!/usr/bin/env ruby

require 'fileutils'

if File.directory? "#{root}/.git"

    # toDo: this current doesn't work, fix up.
    # toDo: required updates
	# ask for username
	# cp files instead of linking them
    # Setup grails settings
    dot_grails_dir = "#{ENV['HOME']}/.grails"
    FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

    grails_settings_config = "#{dot_grails_dir}/settings.groovy"
    FileUtils.touch grails_settings_config

    # setup
    scripts_home = "#{ENV['HOME']}/scripts"
    FileUtils.touch scripts_home

    # symlink config files
    FileUtils.cp_r 'scripts/.bash_profile', '~/.bash_profile'
    FileUtils.cp_r 'scripts/.bash_rc', '~/.bash_rc'
    FileUtils.cp_r 'scripts/.gitconfig', '~/.gitconfig'
    FileUtils.cp_r 'scripts/.vimrc', '~/.vimrc'

    # symlink completion scripts
    FileUtils.cp_r 'scripts/completion_scripts/grails_completion', '~/scripts/grails_completion'
    FileUtils.cp_r 'scripts/completion_scripts/rake_completion', '~/scripts/rake_completion'
    FileUtils.cp_r 'scripts/completion_scripts/ssh_completion', '~/scripts/ssh_completion'
    FileUtils.cp_r 'scripts/completion_scripts/thor_completion', '~/scripts/thor_completion'
    FileUtils.cp_r 'scripts/git/git-completion.bash', '~/scripts/git-completion.bash'
end
