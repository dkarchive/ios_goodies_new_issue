# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ios_goodies_new_issue/version'

Gem::Specification.new do |spec|
  spec.name          = IosGoodiesNewIssue::PROJECT
  spec.version       = IosGoodiesNewIssue::VERSION
  spec.authors       = ['dkhamsing']
  spec.email         = ['dkhamsing8@gmail.com']

  spec.summary       = IosGoodiesNewIssue::PROJECT_DESCRIPTION
  spec.description   = spec.summary
  spec.homepage      = IosGoodiesNewIssue::PROJECT_URL
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['spec.name']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'octokit', '~> 4.3.0'
end
