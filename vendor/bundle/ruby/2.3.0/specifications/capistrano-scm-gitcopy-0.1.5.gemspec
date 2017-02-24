# -*- encoding: utf-8 -*-
# stub: capistrano-scm-gitcopy 0.1.5 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-scm-gitcopy"
  s.version = "0.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jack Wu", "Carl Douglas"]
  s.date = "2016-09-13"
  s.description = "Gitcopy strategy for capistrano 3.x"
  s.email = ["xuwupeng2000@gmail.com"]
  s.homepage = "https://github.com/xuwupeng2000/capsitrano-scm-gitcopy.git"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Gitcopy strategy for capistrano 3.x"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0.0"])
      s.add_development_dependency(%q<mocha>, ["~> 1.1.0"])
    else
      s.add_dependency(%q<capistrano>, ["~> 3.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0.0"])
      s.add_dependency(%q<mocha>, ["~> 1.1.0"])
    end
  else
    s.add_dependency(%q<capistrano>, ["~> 3.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0.0"])
    s.add_dependency(%q<mocha>, ["~> 1.1.0"])
  end
end
