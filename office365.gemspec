# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'office365/version'

Gem::Specification.new do |spec|
  spec.name          = "office365"
  spec.version       = Office365::VERSION
  spec.authors       = ["Joel Van Horn"]
  spec.email         = ["joel@joelvanhorn.com"]

  spec.summary       = %q{Office365 API client for Ruby apps}
  spec.description   = %q{Office365 API client for Ruby apps}
  spec.homepage      = "https://github.com/joelvh/office365"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
