# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "w3clove/version"

Gem::Specification.new do |s|
  s.name        = "w3clove"
  s.version     = W3Clove::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jaime Iniesta"]
  s.email       = ["jaimeiniesta@gmail.com"]
  s.homepage    = "https://github.com/jaimeiniesta/w3clove/"
  s.summary     = %q{ command-line tool to validate the markup of a whole site against the W3C validator }
  s.description = %q{ this tool allows you to check the markup validation of a whole site,
and outputs a detailed report with all errors and warnings }

  s.add_dependency 'w3c_validators', '1.0.2'
  s.add_dependency 'nokogiri', '1.5.0'
  s.add_dependency 'metainspector', '1.7.1'

  s.add_development_dependency 'rspec', '2.5.0'
  s.add_development_dependency 'mocha', '0.9.12'
  s.add_development_dependency 'rake', '0.9.2'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
