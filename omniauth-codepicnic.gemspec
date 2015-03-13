# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/codepicnic/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-codepicnic"
  spec.version       = Omniauth::Codepicnic::VERSION
  spec.authors       = ["Alvaro Pereyra"]
  spec.email         = ["alvaro@xendacentral.com"]
  spec.summary       = "Implements CodePicnic Oauth2 strategy for Omniauth"
  spec.description   = "Implements CodePicnic Oauth2 strategy for Omniauth"
  spec.homepage      = "https://codepicnic.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     'omniauth', '~> 1.0'
  spec.add_runtime_dependency     'omniauth-oauth2'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end