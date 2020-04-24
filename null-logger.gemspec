# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'null_logger/version'

Gem::Specification.new do |spec|
  spec.name        = 'null-logger'
  spec.version     = NullLogger::VERSION
  spec.authors     = ['Maciej Mensfeld', 'Adam Gwozdowski']
  spec.email       = %w[maciej@coditsu.io adam99g@gmail.com]
  spec.summary     = 'A simple logger that does not log anything.'
  spec.description = 'It can be used for defining an interface for other loggers'
  spec.homepage    = 'https://github.com/karafka/null-logger'
  spec.license     = 'LGPL-3.0'

  spec.required_ruby_version = '>= 2.5.0'

  if $PROGRAM_NAME.end_with?('gem')
    spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end

  spec.cert_chain    = %w[certs/mensfeld.pem]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]
end
