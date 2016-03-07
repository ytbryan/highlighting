# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'highlighting/version'
require 'highlighting/post_message'

Gem::Specification.new do |spec|
  spec.name          = "highlighting"
  spec.version       = Highlighting::VERSION
  spec.authors       = ["bryan lim"]
  spec.email         = ["ytbryan@gmail.com"]
  spec.summary       = %q{Syntax Highlighting for Rails using PrismJS.}
  spec.description   = %q{Syntax Highlighting for Rails using PrismJS.}
  spec.homepage      = "http://github.com/ytbryan/highlighting"
  spec.license       = "MIT"
  spec.post_install_message = Log::MESSAGE
  spec.files         = Dir["{app,lib,vendor}/**/*", "LICENSE", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
