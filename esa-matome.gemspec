# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'esa/matome/version'

Gem::Specification.new do |spec|
  spec.name          = "esa-matome"
  spec.version       = Esa::Matome::VERSION
  spec.authors       = ["koshikawa"]
  spec.email         = ["koshikawa.naoto@moneyforward.co.jp"]

  spec.summary       = %q{esa matome for team}
  spec.description   = %q{Create summary post for team.}
  spec.homepage      = "https://github.com/ppworks/esa-matome"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "esa", "~> 1.2"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "mocha", "~> 1.1.0"
end
