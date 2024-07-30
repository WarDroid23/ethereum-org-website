# -*- encoding: utf-8 -*-
# stub: gem_publisher 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem_publisher".freeze
  s.version = "1.5.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Government Digital Service".freeze]
  s.date = "2014-10-30"
  s.description = "Automatically build, tag, and push a gem when its version has been updated.".freeze
  s.homepage = "http://github.com/alphagov/gem_publisher".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Automatically build, tag, and push gems".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<mocha>.freeze, ["= 0.14.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 2.5.1".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
