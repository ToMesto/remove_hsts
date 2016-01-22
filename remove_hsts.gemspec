# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'remove_hsts/version'

Gem::Specification.new do |spec|
  spec.name          = "remove_hsts"
  spec.version       = RemoveHsts::VERSION
  spec.authors       = ["Sergey Tsvetkov"]
  spec.email         = ["s.tsvetkov@tomesto.ru"]

  spec.summary       = %q{Removes HSTS header from Rails response}
  spec.description   = %q{If your nginx is responsible for HSTS and you want to remove headers that were added by Rails this solution is for you}
  spec.homepage      = "https://github.com/ToMesto/remove_hsts"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"

  spec.add_dependency "rack", "~> 1.0"
end
