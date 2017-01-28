# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'config_local/version'

Gem::Specification.new do |spec|
  spec.name          = "config_local"
  spec.version       = ConfigLocal::VERSION
  spec.authors       = ["Michael Robinson"]
  spec.email         = ["seraph890@gmail.com"]

  spec.summary       = "Local Config"
  spec.description   = "Local configurations, I use this to install all the things that I need when I set up a new PC"
  spec.homepage      = "https://github.com/michaelrob/config-local"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
