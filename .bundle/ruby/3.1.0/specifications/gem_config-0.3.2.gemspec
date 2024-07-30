# -*- encoding: utf-8 -*-
# stub: gem_config 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "gem_config".freeze
  s.version = "0.3.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Manuel Meurer".freeze]
  s.date = "2019-11-21"
  s.description = "A nifty way to make your gem configurable.".freeze
  s.email = "manuel@krautcomputing.com".freeze
  s.homepage = "http://krautcomputing.github.io/gem_config".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "A nifty way to make your gem configurable.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.2".freeze])
end
