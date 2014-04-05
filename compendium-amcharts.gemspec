# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compendium/amcharts/version'

Gem::Specification.new do |spec|
  spec.name          = "compendium-amcharts"
  spec.version       = Compendium::AmCharts::VERSION
  spec.authors       = ["Daniel Vandersluis"]
  spec.email         = ["dvandersluis@selfmgmt.com"]
  spec.description   = %q{AmCharts.rb provider for Compendium reports}
  spec.summary       = %q{AmCharts.rb provider for Compendium reports}
  spec.homepage      = "https://github.com/dvandersluis/compendium-amcharts"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'amcharts.rb', '>= 3.4.7.1'
  spec.add_dependency 'compendium', '>= 1.1.0'
end
