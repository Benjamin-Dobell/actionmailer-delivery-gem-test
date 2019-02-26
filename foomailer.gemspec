# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foomailer/version'

Gem::Specification.new do |spec|

  spec.name             = 'foomailer'
  spec.version          = FooMailer::VERSION
  spec.platform         = Gem::Platform::RUBY
  spec.license          = 'MIT'

  spec.summary          = "A fake ActionMailer delivery method for testing purposes"

  spec.authors          = ['Benjamin Dobell']
  spec.email            = 'support@glassechidna.com.au'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_development_dependency 'bundler', '>= 1.3.0'
  spec.add_development_dependency 'rails'

end
