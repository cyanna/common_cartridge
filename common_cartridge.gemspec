# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "common_cartridge"
  spec.version       = "1.0.1"
  spec.authors       = ["Josh Simpson"]
  spec.email         = ["jsimpson@instructure.com"]
  spec.summary       = %q{CommonCartridge}
  spec.description   = "Parse IMS Common Cartridge packages"
  spec.homepage      = "http://www.instructure.com/"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{lib,spec}/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sax-machine", "~> 1.3.2"
  spec.add_dependency "nokogiri", ">= 1.8.5"
  spec.add_dependency "rubyzip", "~> 1.2.1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
