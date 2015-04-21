# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reflux/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "reflux-rails"
  spec.version       = Reflux::Rails::VERSION
  spec.authors       = ["Raphael Cuba"]
  spec.email         = ["raphael@raphaelcuba.com"]

  spec.summary       = %q{The Reflux.js JavaScript library ready to play with Rails.}
  spec.description   = <<-EOF
    A simple library for unidirectional dataflow architecture inspired by ReactJS Flux.
  EOF

  spec.homepage      = "https://github.com/raphaelcuba/reflux-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.0"
end
