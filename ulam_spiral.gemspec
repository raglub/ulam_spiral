# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ulam_spiral/version'

Gem::Specification.new do |spec|
  spec.name          = "ulam_spiral"
  spec.version       = UlamSpiral::VERSION
  spec.authors       = ["Michał szyma"]
  spec.email         = ["raglub.ruby@gmail.com"]
  spec.description   = %q{This gem can generate Ulam spiral and also shows result on console}
  spec.summary       = %q{Ulam spiral}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "prime"

end
