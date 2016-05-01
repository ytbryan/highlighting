# Highlighting

Highlighting ships with the latest [PrismJS](http://prismjs.com).

> Prism is a lightweight, robust, elegant syntax highlighting library. It's a spin-off project from Dabblet.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'highlighting'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install highlighting
```

At application.js, replace [language] with the name of language. For example: prism-ruby or prism-coffeescript
```
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require prism
//= require prism-[language]
//= require prism-turbolinks #optional
//= require_tree .
```

At application.css, add `*= require prism-[theme]` or use the default `*= require prism`

```
 *= require_tree .
 *= require prism-[theme]
 *= require_self
```
There are various other themes to choose from. For example `*= require prism-tomorrow`, `*= require prism-twilight`.


## Usage
Use the alias in place of xxxx in `language-xxxx`. `language-xxxx` is a css rule here used by prismjs.

For example: ruby, python, go, swift

```
<%= code "language-ruby" %>
  <!-- type any ruby code you like -->
<% end %>
```

## Known Issues

With turbolinks enabled, prismjs is not called at page load. For quick fix, add the `//= require prism-turbolinks` line at application.js

```
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require prism
//= require prism-ruby
//= require prism-turbolinks
//= require_tree .
```

If you wish to add the code manually, read [prismjs not working with turbolinks](http://stackoverflow.com/questions/21278357/prism-js-not-working-with-rails-4-turbolinks/21355342#21355342)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ytbryan/highlighting. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

Highlighting is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
