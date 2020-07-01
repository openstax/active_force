# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_force/version'

Gem::Specification.new do |spec|
  spec.name          = "openstax_active_force"
  spec.version       = ActiveForce::VERSION
  spec.authors       = ["Eloy Espinaco", "Pablo Oldani", "Armando Andini", "José Piccioni", "JP Slavinsky", "Dante Soares"]
  spec.email         = "dante.m.soares@rice.edu"
  spec.description   = %q{Use SalesForce as an ActiveModel}
  spec.summary       = %q{Help you implement models persisting on Sales Force within Rails using RESTForce}
  spec.homepage      = "https://github.com/openstax/active_force"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency 'rails', ">= 5.0", '< 7.0'
  spec.add_dependency 'active_attr'
  spec.add_dependency 'restforce'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
