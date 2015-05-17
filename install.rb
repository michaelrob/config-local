#!/usr/bin/env ruby

require 'fileutils'

if File.directory? "#{root}/.git"

    # Setup grails settings
    dot_grails_dir = "#{ENV['HOME']}/.grails"
    FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

    grails_settings_config "#{dot_grails_dir}/settings.groovy"
    FileUtils.touch grails_settings_config
end



# symlink config files
