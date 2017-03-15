[![Build Status](https://travis-ci.org/GeoffWilliams/yamljson.svg?branch=master)](https://travis-ci.org/GeoffWilliams/yamljson)
# Yamljson

This is a really simple CLI tool to convert between YAML and JSON.  It's written in Ruby and allows the full flexibily of whatever Ruby allows you to parse.

Installing the gem provides the following new commands:
* `json2yaml`
* `yaml2json`

## Installation

```shell
$ gem install yamljson
```

## Usage

### Convert YAML to JSON
```shell
$ yaml2json --input-file /path/to/yaml/file
```

### Convert JSON to YAML
```shell
$ json2yaml --input-file /path/to/json/file
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Testing
To run tests:

```shell
bundle install
bundle exec rake spec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GeoffWilliams/yamljson.
