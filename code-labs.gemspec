require_relative 'lib/code/labs/version'

Gem::Specification.new do |spec|
  spec.name          = 'code-labs'
  spec.version       = Code::Labs::VERSION
  spec.authors       = ['Ivan Putra Eriansya']
  spec.email         = ['eriansha.van@gmail.com']

  spec.summary       = 'This repo is dedicated to store all of fundamental programming or programing interview test from a very simple one to a very hardest one, algorithm implementation'
  spec.homepage      = 'https://github.com/eriansha/code-labs/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new()

  spec.metadata['allowed_push_host'] = 'http://mygemserver.com'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/eriansha/code-labs/'
  spec.metadata['changelog_uri'] = 'https://github.com/eriansha/code-labs/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
