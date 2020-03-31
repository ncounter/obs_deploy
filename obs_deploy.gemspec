# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'obs_deploy/version'

Gem::Specification.new do |spec|
  spec.name          = 'obs_deploy'
  spec.version       = ObsDeploy::VERSION
  spec.authors       = ['Victor Pereira']
  spec.email         = ['vpereira@suse.de']

  spec.summary       = 'OBS Deployment tool'
  spec.homepage      = 'https://openbuildservice.org'

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/vpereira/obs_deploy.git'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'cheetah'
  spec.add_dependency 'net-ssh'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'dry-cli'
end
