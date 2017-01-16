#!/usr/bin/env ruby

require 'fileutils'

USAGE = <<ENDUSAGE
Usage:
   docubot [-h] [-v] [create [-s shell] [-f]] directory [-w writer] [-o output_file] [-n] [-l log_file]
ENDUSAGE

HELP = <<ENDHELP
   -h, --help       Show this help.
   -i, --install    Install scripts.

ENDHELP

ARGS = { :shell=>'default', :writer=>'chm' } # Setting default values
UNFLAGGED_ARGS = [ :directory ]              # Bare arguments (no flag)
next_arg = UNFLAGGED_ARGS.first
ARGV.each do |arg|
  case arg
    when '-h','--help'      then ARGS[:help]      = true
    when '-i','--install'   then ARGS[:install]   = true
    else
      if next_arg
        ARGS[next_arg] = arg
        UNFLAGGED_ARGS.delete( next_arg )
      end
      next_arg = UNFLAGGED_ARGS.first
  end
end

puts "DocuBot v#{DocuBot::VERSION}" if ARGS[:version]

if ARGS[:help] or !ARGS[:directory]
  puts USAGE unless ARGS[:version]
  puts HELP if ARGS[:help]
  exit
end

if ARGS[:install]
  # call install method
end

def install

  if File.directory? "#{root}/.git"

      # toDo: this current doesn't work, fix up.
      # toDo: required updates
      	# ask for username
      	# cp files instead of linking them

      # setup grails settings
      dot_grails_dir = "#{ENV['HOME']}/.grails"
      FileUtils.mkdir dot_grails_dir unless File.directory? dot_grails_dir

      grails_settings_config = "#{dot_grails_dir}/settings.groovy"
      FileUtils.touch grails_settings_config

      # setup scripts
      scripts_home = "#{ENV['HOME']}/scripts"
      FileUtils.touch scripts_home

      # copy config files
      FileUtils.cp 'scripts/.bash_profile', '~/.bash_profile'
      FileUtils.cp 'scripts/.bash_rc', '~/.bash_rc'
      FileUtils.cp 'scripts/.gitconfig', '~/.gitconfig'
      FileUtils.cp 'scripts/git/gitignore', '~/.gitignore_global'
      FileUtils.cp 'scripts/.vimrc', '~/.vimrc'

      # copy completion scripts
      FileUtils.cp_r 'scripts/completion_scripts/grails_completion', '~/scripts/grails_completion'
      FileUtils.cp_r 'scripts/completion_scripts/rake_completion', '~/scripts/rake_completion'
      FileUtils.cp_r 'scripts/completion_scripts/ssh_completion', '~/scripts/ssh_completion'
      FileUtils.cp_r 'scripts/completion_scripts/thor_completion', '~/scripts/thor_completion'
      FileUtils.cp_r 'scripts/git/git-completion.bash', '~/scripts/git-completion.bash'
  end
end
