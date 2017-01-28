require "thor"
require 'json'

module ConfigLocal
  class Veur < Thor
    desc "install PACKAGE", "This will install the selected package"
    def install(package)
      # ToDo: maybe we can use an install.rb in the package directory as well
        # that way, we can use custom code for each package that we want to use
      if File.exists?("packages/#{package}/information.json") == false
        puts "#{package} does not exist please check the name and try again"
        next
      end

      JSON.parse(File.read("packages/#{package}/information.json"))
    end

    desc "list available packages", "This will list packages available for installation"
    def list
      # ToDo: better formatting, we should limit the amount of characters for easy
        # reading, and also right justify the install advice
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
  end
end