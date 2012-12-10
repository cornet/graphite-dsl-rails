# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphite_template/version'

Gem::Specification.new do |gem|
  gem.name          = "graphite_template"
  gem.version       = GraphiteTemplate::VERSION
  gem.authors       = ["cornet"]
  gem.email         = ["cornet@sheepy.org"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('graphite_graph', '>= 0.0.7')
end
