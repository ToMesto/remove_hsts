This gem removes HSTS header from Rails response. If your nginx is responsible for HSTS and you want to remove headers that were added by Rails
this solution is for you.

## Installation

To make it available just add following lines into your `Gemfile`:

```ruby
gem "remove_hsts"
```

And then execute:

```bash
bundle install
```

That's all. HSTS header specified by Rails will be removed.

## Test

There are no useful specs at this moment. But maybe they will be added in the future. Anyway you can run all available specs
using following commands:

```
git clone https://github.com/ToMesto/remove_hsts
bundle install
bundle exec rake spec
```

Feel free to send pull requests that adds any appropriate tests.

## Contributing

1. Fork it ( https://github.com/ToMesto/remove_hsts/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
