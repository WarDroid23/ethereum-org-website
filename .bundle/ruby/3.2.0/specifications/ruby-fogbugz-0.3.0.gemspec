# -*- encoding: utf-8 -*-
# stub: ruby-fogbugz 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-fogbugz".freeze
  s.version = "0.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon H\u00F8rup Eskildsen".freeze, "Jared Szechy".freeze]
  s.date = "2017-02-10"
  s.description = "A simple Ruby wrapper for the Fogbugz XML API".freeze
  s.email = ["sirup@sirupsen.com".freeze, "jared.szechy@gmail.com".freeze]
  s.homepage = "https://github.com/firmafon/ruby-fogbugz".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Ruby wrapper for the Fogbugz API".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<crack>.freeze, ["~> 0.4".freeze])
  s.add_runtime_dependency(%q<multipart-post>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["< 11.0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 1.21".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 1.0.0".freeze])
end
