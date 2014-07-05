# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'custom_field/version'

Gem::Specification.new do |spec|
  spec.name          = "custom_field"
  spec.version       = CustomField::VERSION
  spec.authors       = ["martin-yang"]
  spec.email         = ["martinyjf@gmail.com"]
  spec.summary       = %q{Custom_Field generator.}
  spec.description   = %q{custom field}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
