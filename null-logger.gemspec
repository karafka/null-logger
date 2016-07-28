lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'null_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "null-logger"
  spec.version       = NullLogger::VERSION
  spec.authors       = ['Maciej Mensfeld', 'Adam Gwozdowski']
  spec.email         = %w( maciej@mensfeld.pl adam99g@gmail.com )

  spec.summary       = 'A simple logger that does not log anything.'
  spec.description   = 'It can be used for defining an interface for other loggers'
  spec.homepage      = 'https://github.com/karafka/null-logger'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = %w( lib )
end
