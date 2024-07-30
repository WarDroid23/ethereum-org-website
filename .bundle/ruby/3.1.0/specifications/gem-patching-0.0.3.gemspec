# -*- encoding: utf-8 -*-
# stub: gem-patching 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-patching".freeze
  s.version = "0.0.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ingo Weiss".freeze]
  s.date = "2010-12-09"
  s.description = "gem-patching provides a mechanism for marking code blocks as a patch targeting specific versions of a gem and be notified when that gem is updated, so that developers can assess whether the patch continues to be necessary".freeze
  s.email = "ingo@ingoweiss.com".freeze
  s.homepage = "http://github.com/ingoweiss/gem-patching".freeze
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Better management of patches targeting specific versions of a specific gems".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version
end
