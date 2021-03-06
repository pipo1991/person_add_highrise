# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'person_add/version'

Gem::Specification.new do |spec|
  spec.name          = "person-add"
  spec.version       = PersonAdd::VERSION
  spec.authors       = ["Patrick Ragi"]
  spec.email         = ["patricholamaro@yahoo.com"]
  spec.summary       = %q{It is about dealing with  Highrise API}
  spec.description   = %q{It is about dealing with  Highrise API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "curb"
end
