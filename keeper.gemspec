# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keeper/version'

Gem::Specification.new do |spec|
  spec.name          = "keeper"
  spec.version       = Keeper::VERSION
  spec.authors       = ["Evgeniy Zabolotniy"]
  spec.email         = ["evgeniy.zabolotniy@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Store all your collections in one class}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/zevgeniy/keeper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport', ">= 4.2.10"

  spec.add_development_dependency "bundler", ">= 1.8"
  spec.add_development_dependency "rake", ">= 10.0"
end
