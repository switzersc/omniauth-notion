# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-notion/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-notion"
  gem.version       = Omniauth::Notion::VERSION
  gem.authors       = ["Shelby Switzer"]
  gem.email         = ["developer@getnotion.com"]
  gem.description   = %q{OmniAuth strategy for Notion}
  gem.summary       = %q{OmniAuth strategy for Notion}
  gem.homepage      = "https://github.com/LoopLabsInc/omniauth-notion"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end