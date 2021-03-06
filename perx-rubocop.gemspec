# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perx/rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = 'perx-rubocop'
  spec.version       = Perx::Rubocop::VERSION
  spec.authors       = ['Rui Baltazar']
  spec.email         = ['rui.p.baltazar@gmail.com']

  spec.summary       = "Perx's Rubocop Configuration"
  spec.description   = "Use this to load the default rubocop configuration and inehrit from it"
  spec.homepage      = "https://github.com/PerxTech/perx-rubocop"
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = "https://github.com/PerxTech/perx-rubocop"
  spec.metadata['changelog_uri'] = "https://github.com/PerxTech/perx-rubocop/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency "rubocop", "~> 0.77.0"
  spec.add_dependency "rubocop-rails", "~> 2.3.2"
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
end
