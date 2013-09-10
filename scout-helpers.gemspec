# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scout-helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "scout-helpers"
  spec.version       = ScoutHelpers::VERSION
  spec.authors       = ["Tucker Joseph"]
  spec.email         = ["tucker@chartboost.com"]
  spec.description   = %q{helper methods for scout}
  spec.summary       = %q{helper methods for scout}
  spec.homepage      = "https://github.com/rtjoseph11/scout-helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
