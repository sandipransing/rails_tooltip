# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_tooltip/version"

Gem::Specification.new do |s|
  s.name        = "rails_tooltip"
  s.version     = RailsTooltip::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sandip Ransing"]
  s.email       = ["san2821@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Easy jQuery Tooltip plugin for ruby on rails}
  s.description = %q{Provides a simple way to use tooltip in rails app}

  s.rubyforge_project = "rails_tooltip"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
