# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'array_to_average/version'

Gem::Specification.new do |spec|
  spec.name          = "array_to_average"
  spec.version       = ArrayToAverage::VERSION
  spec.authors       = ["Walmir Neto"]
  spec.email         = ["wfsneto@gmail.com"]

  spec.summary       = "Get array numbers and calculate the average"
  spec.description   = "This gem is a sample gem on 'http://blog.wfsneto.com.br/'"
  spec.homepage      = "https://github.com/wfsneto/array_to_average"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE.txt', 'Rakefile', 'README.md']
  spec.test_files = Dir['spec/**/*']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
