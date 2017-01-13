# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rom/dynamo/version'

Gem::Specification.new do |spec|
  spec.name          = "rom-dynamo"
  spec.version       = ROM::Dynamo::VERSION
  spec.authors       = ["davidkelley"]
  spec.email         = ["david.james.kelley@gmail.com"]
  spec.summary       = 'DynamoDB adapter for Ruby Object Mapper'
  spec.homepage      = "https://github.com/davidkelley/rom-dynamo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rom", ">= 2.0.0"
  spec.add_runtime_dependency "aws-sdk-core", ">= 2.1"
  spec.add_runtime_dependency "deep_merge", ">= 1.1.1"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end