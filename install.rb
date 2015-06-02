#!/usr/bin/env ruby

require 'fileutils'

if File.directory? "#{root}/.git"

    # Setup grails settings
    dot_grails_dir = "#{ENV['HOME']}/.grails"
    FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

    grails_settings_config "#{dot_grails_dir}/settings.groovy"
    FileUtils.touch grails_settings_config

    # symlink config files
    FileUtils.ln_s 'scripts/.bach_profile', '~/.bash_profile'
    FileUtils.ln_s 'scripts/.bach_rc', '~/.bash_rc'
    FileUtils.ln_s 'scripts/.gitconfig', '~/.gitconfig'
    FileUtils.ln_s 'scripts/.vimrc', '~/.vimrc'

    # symlink completion scripts
    
end
