# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/fliva/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-fliva"
  spec.version       = Omniauth::Fliva::VERSION
  spec.authors       = ["Claus Witt"]
  spec.email         = ["claus@wittnezz.dk"]

  spec.summary       = %q{An omniauth strategy for signing in to the Fliva platform }
  spec.description   = %q{This plugin allows you to login to the Fliva platform, and use that authentication to initiate video renderings}
  spec.homepage      = "https://developers.fliva.com/libraries/omniauth_fliva"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'multi_json', '~> 1.0'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
end
