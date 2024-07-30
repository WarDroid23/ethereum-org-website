# -*- encoding: utf-8 -*-
# stub: gem-compiler 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-compiler".freeze
  s.version = "0.9.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 2.6.0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Luis Lavena".freeze]
  s.date = "2020-04-05"
  s.description = "A RubyGems plugin that helps generates binary gems from already existing\nones without altering the original source code. It compiles Ruby C\nextensions and bundles the result into a new gem.\n".freeze
  s.email = "luislavena@gmail.com".freeze
  s.homepage = "https://github.com/luislavena/gem-compiler".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "A RubyGems plugin that generates binary gems.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, ["~> 12.0".freeze, ">= 12.0.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 4.7".freeze])
end
