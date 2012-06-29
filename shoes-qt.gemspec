# -*- encoding: utf-8 -*-
require File.expand_path('../lib/shoes/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "shoes-qt"
  s.version     = Shoes::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eric Watson", "Team Shoes"]
  s.email       = ["wasnotrice@gmail.com"]
  s.homepage    = "http://github.com/wasnotrice/shoes-qt"
  s.summary     = %q{A Qt backend for Shoes, the best little GUI toolkit for Ruby.}
  s.description = %q{A Qt backend for Shoes}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #s.add_dependency "shoes4" # Not published yet!
  s.add_dependency "qtbindings"

  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-nav"

  s.add_development_dependency "cucumber"
  s.add_development_dependency "rspec", "~>2.10"
  s.add_development_dependency "rake"

  s.add_development_dependency "yard"
  s.add_development_dependency "kramdown"
end

