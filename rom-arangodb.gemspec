# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rom/arangodb/version'

Gem::Specification.new do |spec|
  spec.name          = "rom-arangodb"
  spec.version       = ROM::Arangodb::VERSION.dup
  spec.authors       = ["Ivan Lavriv"]
  spec.email         = ["lavriv92@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = "Arangodb support for Ruby object mapper"
  spec.description   = spec.summary
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rom",  "~> 1.0"
  spec.add_runtime_dependency "ashikawa-core", "~> 0.14"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
