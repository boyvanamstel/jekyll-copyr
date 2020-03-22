# Jekyll Copyr

[![Gem Version](https://badge.fury.io/rb/jekyll-copyr.svg)](https://badge.fury.io/rb/jekyll-copyr)

A Jekyll plugin that taps into `FileUtils.cp_r` from your `_config.yml`. Easily copy files from anywhere into your site.

## Installation

Add this line to your application's Gemfile:

```ruby
# Gemfile

gem 'jekyll-copyr'
```

And then add this line to your application's `_config.yml`:

```yml
# _config.yml

plugins:
  - jekyll-copyr

jekyll-copyr:
  enabled: true # Optional, defaults to true
  tasks:
    - from: "./node_modules/@fortawesome/fontawesome-free/webfonts/."
      to: "./_site/assets/webfonts/"
```

## Usage

Add the `from` and `to` path of the files you want to copy into the array below `tasks`. You can add as many tasks as you want. The task above copies all the webfonts from fontawesome into the `_site` directory.

## Purpose

I've built this plugin to work around the need to ship my entire `node_modules` folder just to use some webfonts from Font Awesome.

You can also copy files from outside your project folder into your site. This allows you to share files between projects.

## Development

After checking out the repo, run `script/bootstrap` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `lib/jekyll-copyr/version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/boyvanamstel/jekyll-copyr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to behave appropriately.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
