# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'meta_threads'
  spec.version       = '1.0.0'
  spec.authors       = ['Nirav Kanani']
  spec.email         = ['kananinirav0@gmail.com']
  spec.summary       = "A Ruby gem for interacting with the Meta's Threads."
  spec.description   = "A Ruby gem that provides convenient methods for interacting with the Meta's Threads."
  spec.homepage      = 'https://github.com/kananinirav/threads-api'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'json'
  spec.add_dependency 'net-http'

  spec.metadata['source_code_uri'] = 'https://github.com/kananinirav/threads-api'
  # spec.metadata['changelog_uri']   = 'https://github.com/kananinirav/threads/blob/main/CHANGELOG.md'
end
