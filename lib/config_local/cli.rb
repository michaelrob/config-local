require "thor"

module ConfigLocal
  class Veur < Thor
    desc "install PACKAGE", "This will install the selected package"
    def install(package)
      puts "installing...."
    end

    desc "list available packages", "This will list packages available for installation"
    def list
      puts "Available packages:"
    end
  end
end