#!/usr/bin/env ruby

require 'fileutils'
require 'pry'

if File.directory? ".git"
  dot_grails_dir = "#{ENV['HOME']}/.grails"
  FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

  grails_settings_config = "#{dot_grails_dir}/settings.groovy"
  FileUtils.touch grails_settings_config

  # setup scripts
  # some scripts will be copied here
  scripts_home = "#{ENV['HOME']}/scripts"
  FileUtils.touch scripts_home

  # copy bash configs
  FileUtils.cp 'packages/bash/.bash_profile', '~/.bash_profile'
  FileUtils.cp 'packages/bash/.bash_rc', '~/.bash_rc'

  # copy git configs
  FileUtils.cp 'packages/git/.gitconfig', '~/.gitconfig'
  FileUtils.cp 'packages/git/gitignore', '~/.gitignore_global'

  # copy vim configs
  FileUtils.cp 'packages/vim/.vimrc', '~/.vimrc'
  # todo: add spacemacs to this, it might be handy

  # copy mysql configs
  FileUtils.cp 'packages/mysql/my.cnf', '~/.my.cnf'

  # copy completion scripts
  FileUtils.cp_r 'packages/completion_scripts/grails_completion', '~/scripts/grails_completion'
  FileUtils.cp_r 'packages/completion_scripts/rake_completion', '~/scripts/rake_completion'
  FileUtils.cp_r 'packages/completion_scripts/ssh_completion', '~/scripts/ssh_completion'
  FileUtils.cp_r 'packages/completion_scripts/thor_completion', '~/scripts/thor_completion'
  FileUtils.cp_r 'packages/git/git-completion.bash', '~/scripts/git-completion.bash'
end
