# perx-rubocop

perx-rubocop is, as the name suggests, Perx's rubocop default configuration.
Using this gem allows us to ensure that different projects follow the same
standards and rely on the same rubocop version, improving the consistency.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'perx-rubocop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install perx-rubocop

## Usage

Once this gem is part of your gem list, you already have rubocop and
rubocop-rails installed as these are dependencies of perx-rubocop. The only
thing left to do is to update your rubocop.yml file to look like this:

```
inherit_gem:
  perx-rubocop:
    - default.yml
```

This will inherit all the perx-rubocop configurations. In case you need to
overwrite any of the rules, the file behaves the same as before.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/PerxTech/perx-rubocop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Perx::Rubocop project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/PerxTech/perx-rubocop/blob/master/CODE_OF_CONDUCT.md).
