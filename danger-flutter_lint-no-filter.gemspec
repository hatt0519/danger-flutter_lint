lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "flutter_lint/gem_version.rb"

Gem::Specification.new do |spec|
  spec.name          = "danger-flutter_lint-no-filter"
  spec.version       = FlutterLint::VERSION
  spec.authors       = ["hatt0519"]
  spec.email         = ["moroku0519@gmail.com"]
  spec.summary       = "original: https://github.com/mateuszszklarek/danger-flutterlint This is the fixed danger-flutterlint not to filter flutter analyze result"
  spec.homepage      = "https://github.com/hatt0519/danger-flutter_lint"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "danger-plugin-api", "~> 1.0"

  spec.add_development_dependency "codecov", "~> 0.1"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rb-readline", "~> 0.5"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.6"
  spec.add_development_dependency "simplecov", "~> 0.16"
end
