# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/strategies/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-codepicnic"
  spec.version       = OmniAuth::Strategies::CodePicnic::VERSION
  spec.authors       = ["Alvaro Pereyra"]
  spec.email         = ["alvaro@xendacentral.com"]
  spec.summary       = "Implements CodePicnic Oauth2 strategy for Omniauth"
  spec.description   = "Implements CodePicnic Oauth2 strategy for Omniauth"
  spec.homepage      = "https://github.com/CodePicnic/omniauth-codepicnic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     'omniauth', '~> 1.0'
  spec.add_runtime_dependency     'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0.8", ">= 0.8.7"
end
