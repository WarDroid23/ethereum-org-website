# -*- encoding: utf-8 -*-
# stub: gem-helper 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-helper".freeze
  s.version = "0.0.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gabe Varela".freeze]
  s.date = "2009-10-08"
  s.description = "A lightweight shim for managing gems from a geminstaller.yml file".freeze
  s.email = "gvarela@gmail.com".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/gvarela/gem-helper".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "A lightweight shim for managing gems from a geminstaller.yml file".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 3

  s.add_development_dependency(%q<thoughtbot-shoulda>.freeze, [">= 0".freeze])
end
