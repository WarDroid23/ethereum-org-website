# -*- encoding: utf-8 -*-
# stub: ruby-magic 0.6.0 ruby lib lib
# stub: ext/magic/extconf.rb

Gem::Specification.new do |s|
  s.name = "ruby-magic".freeze
  s.version = "0.6.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/kwilczynski/ruby-magic/issues", "changelog_uri" => "https://github.com/kwilczynski/ruby-magic/blob/master/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/gems/ruby-magic", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/kwilczynski/ruby-magic" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze, "lib".freeze]
  s.authors = ["Krzysztof Wilczy\u0144ski".freeze]
  s.date = "2023-03-14"
  s.description = "File Magic in Ruby.\n\nSimple interface to libmagic for Ruby Programming Language.\n".freeze
  s.email = "kw@linux.com".freeze
  s.extensions = ["ext/magic/extconf.rb".freeze]
  s.extra_rdoc_files = ["ext/magic/functions.c".freeze, "ext/magic/ruby-magic.c".freeze, "README.md".freeze]
  s.files = ["README.md".freeze, "ext/magic/extconf.rb".freeze, "ext/magic/functions.c".freeze, "ext/magic/ruby-magic.c".freeze]
  s.homepage = "https://github.com/kwilczynski/ruby-magic".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.post_install_message = "Thank you for installing!\n".freeze
  s.rdoc_options = ["--main".freeze, "README.md".freeze, "--line-numbers".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "File Magic in Ruby".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<mini_portile2>.freeze, ["~> 2.8".freeze])
end
