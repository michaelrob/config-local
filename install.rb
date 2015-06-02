#!/usr/bin/env ruby

require 'fileutils'

if File.directory? "#{root}/.git"

    # Setup grails settings
    dot_grails_dir = "#{ENV['HOME']}/.grails"
    FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

    grails_settings_config "#{dot_grails_dir}/settings.groovy"
    FileUtils.touch grails_settings_config

    # setup
    scripts_home = "#{ENV['HOME']}/scripts"
    FileUtils.touch scripts_home

    # symlink config files
    FileUtils.ln_s 'scripts/.bash_profile', '~/.bash_profile'
    FileUtils.ln_s 'scripts/.bash_rc', '~/.bash_rc'
    FileUtils.ln_s 'scripts/.gitconfig', '~/.gitconfig'
    FileUtils.ln_s 'scripts/.vimrc', '~/.vimrc'

    # symlink completion scripts
    FileUtils.ln_s 'scripts/completion_scripts/grails_completion', '~/scripts/grails_completion'
    FileUtils.ln_s 'scripts/completion_scripts/rake_completion', '~/scripts/rake_completion'
    FileUtils.ln_s 'scripts/completion_scripts/ssh_completion', '~/scripts/ssh_completion'
    FileUtils.ln_s 'scripts/completion_scripts/thor_completion', '~/scripts/thor_completion'
    FileUtils.ln_s 'scripts/git/git-completion.bash', '~/scripts/git-completion.bash'
end
