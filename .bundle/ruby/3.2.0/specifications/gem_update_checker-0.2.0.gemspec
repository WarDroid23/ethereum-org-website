# -*- encoding: utf-8 -*-
# stub: gem_update_checker 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem_update_checker".freeze
  s.version = "0.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["henteko".freeze]
  s.date = "2015-11-02"
  s.description = "Check gem update.".freeze
  s.email = ["henteko07@gmail.com".freeze]
  s.homepage = "https://github.com/henteko/gem_update_checker".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Check gem update.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3.0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 1.21.0".freeze])
end
