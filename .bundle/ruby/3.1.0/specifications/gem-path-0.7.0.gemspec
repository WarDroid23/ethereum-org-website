# -*- encoding: utf-8 -*-
# stub: gem-path 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-path".freeze
  s.version = "0.7.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lin Jen-Shin (godfat)".freeze]
  s.date = "2021-08-11"
  s.description = "Find the path for a given gem or require path for editing or greping.\n\nFor examples, under [fish](http://fishshell.com/):\n\n    cd (gem path gem-path)\n    vim (gem path gem-path)\n    grep require -R (gem path gem-path)\n\nOr checkout [gem-eit][], [gem-grep][] for shorthands.\n\n[gem-eit]: https://github.com/godfat/gem-eit\n[gem-grep]: https://github.com/godfat/gem-grep".freeze
  s.email = ["godfat (XD) godfat.org".freeze]
  s.homepage = "https://github.com/godfat/gem-path".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Find the path for a given gem or require path for editing or greping.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version
end
