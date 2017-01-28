require "thor"
require 'json'

module ConfigLocal
  class Veur < Thor
    desc "install PACKAGE", "Installs the selected package if it exists"
    def install(package)
      # ToDo: maybe we can use an install.rb in the package directory as well
        # that way, we can use custom code for each package that we want to use
      if File.exists?("packages/#{package}/information.json") == false
        # ToDo: we could probably make this a bit better and add a search
          # "did you mean x package"
        return puts "#{package} does not exist please check the name and try again"
      end

      JSON.parse(File.read("packages/#{package}/information.json"))
    end

    desc "list available packages", "Lists packages available for installation"
    def list
      # ToDo: better formatting, we should limit the amount of characters for easy
        # reading, and also right justify the install advice
      # ToDo: variable directory, so users can add additional packages and things
        # they want to install. Find a way to make the gem look for ruby scripts
        # in the install directory
      Dir.foreach('packages') do |item|
        next if item == '.' or item == '..' or File.exists?("packages/#{item}/information.json") == false
        data = JSON.parse(File.read("packages/#{item}/information.json"))
        puts "--------------------------------------------------------------------------------"
        puts data["name"]
        puts ""
        puts data["description"]
        puts ""
        puts "configlocal install #{data['name']}"
        puts ""
      end
    end

    desc "searches available packages", "Shows available packages based on keywords"
    def search
      # ToDo: searches available packages and displays information on those
    end
  end
end