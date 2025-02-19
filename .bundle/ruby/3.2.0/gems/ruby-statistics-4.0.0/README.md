# Ruby Statistics
![](https://github.com/estebanz01/ruby-statistics/actions/workflows/ruby.yml/badge.svg)

## Note regarding Versions 3.x and 4.x
Hola! :wave: right now the gem got an update that introduced a breaking change in master where the Outermost namespace was changed to be `ruby_statistics` instead of `statistics`. This change is in _master_ already but not yet released. If you're relying on branch instead of gem version, you can checkout branch `3.x`. This branch will be supported but no additional features will be added.

---

A basic ruby gem that implements some statistical methods, functions and concepts to be used in any ruby environment without depending on any mathematical software like `R`, `Matlab`, `Octave` or similar.

Unit test runs under the following ruby versions:
* Ruby 3.0.
* Ruby 3.1.
* Ruby 3.2.
* Ruby 3.3.

We got the inspiration from the folks at [JStat](https://github.com/jstat/jstat) and some interesting lectures about [Keystroke dynamics](http://www.biometric-solutions.com/keystroke-dynamics.html).

Some logic and algorithms are extractions or adaptations from other authors, which are referenced in the comments.
This software is released under the MIT License.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-statistics'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-statistics

## Basic Usage

just require the `ruby-statistics` gem in order to load it. If you don't have defined the `Distribution` namespace, the gem will assign an alias, reducing the number of namespaces needed to use a class.

Right now you can load:

* The whole statistics gem. `require 'ruby-statistics'`
* A namespace. `require 'ruby-statistics/distribution'`
* A class. `require 'ruby-statistics/distribution/normal'`

Feel free to use the one that is more convenient to you.

### Hello-World Example
```ruby
require 'ruby-statistics'

poisson = Distribution::Poisson.new(l) # Using Distribution alias.
normal = RubyStatistics::Distribution::StandardNormal.new # Using all namespaces.
```

## Documentation
You can find a bit more detailed documentation of all available distributions, tests and functions in the [Documentation Index](https://github.com/estebanz01/ruby-statistics/wiki)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/estebanz01/ruby-statistics. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RubyStatistics project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/estebanz01/ruby-statistics/blob/master/CODE_OF_CONDUCT.md).

## Contact

You can contact me via:
* [Github](https://github.com/estebanz01)
* [Twitter](https://twitter.com/estebanz01)
