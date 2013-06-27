# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pure/place/rails/version'

Gem::Specification.new do |s|
  s.name          = "pure-place-rails"
  s.version       = PurePlace::VERSION
  s.authors       = ["Matthew Lehner"]
  s.email         = ["matthewlehner@gmail.com"]
  s.description   = %q{TODO: Write a gem description}
  s.summary       = %q{TODO: Write a gem summary}
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency('sass', '>= 3.2.0')
end
