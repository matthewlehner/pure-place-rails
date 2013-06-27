# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pure-place/version'

Gem::Specification.new do |s|
  s.name          = "pure-place-rails"
  s.version       = PurePlace::VERSION
  s.homepage      = "https://github.com/matthewlehner/pure-place-rails"
  s.authors       = ["Matthew Lehner"]
  s.email         = ["matthewlehner@gmail.com"]
  s.summary       = %q{Pure css, as scss placeholders, for the Rails asset pipeline}
  s.description   = <<-DESC
This is Yahoo's Pure CSS framework, but with sass placeholders instead of basic css.
It's great and you can use it with Rails 3.1+ in the asset pipeline.
  DESC

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency('sass', '>= 3.2.0')
end
