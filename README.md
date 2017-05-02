# Null Logger

[![Build Status](https://travis-ci.org/karafka/null-logger.svg?branch=master)](https://travis-ci.org/karafka/null-logger)
[![Code Climate](https://codeclimate.com/github/karafka/null-logger/badges/gpa.svg)](https://codeclimate.com/github/karafka/null-logger)
[![Gem Version](https://badge.fury.io/rb/null-logger.svg)](http://badge.fury.io/rb/null-logger)
[![Join the chat at https://gitter.im/karafka/karafka](https://badges.gitter.im/karafka/karafka.svg)](https://gitter.im/karafka/karafka?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A simple logger that does not log anything. It can be used for defining an interface for other loggers.


## Installation

Add gem to your Gemfile
```ruby
  gem 'null-logger', require: 'null_logger'
```

## Usage
On NullLogger instance you can call methods which corresponds to Ruby Logger log levels (unknown, fatal, error, warn, info, debug), ex:

```ruby
  NullLogger.new.fatal # return nil
  NullLogger.new.wrong_method # raise NoMethodError
```

NullLogger define interface for real logger instance, ex:

```ruby
  class Worker
    class << self
      attr_writer :logger

      def logger
        @logger ||= NullLogger.new
      end

      def method()
        # some code
      rescue => exception
        self.class.logger.fatal(exception)
        raise exception
      end
    end
  end
```


## References

* [Karafka framework](https://github.com/karafka/karafka)
* [Waterdrop](https://github.com/karafka/waterdrop)
* [Worker Glass](https://github.com/karafka/worker-glass)
* [Envlogic](https://github.com/karafka/envlogic)
* [Null Logger Travis CI](https://travis-ci.org/karafka/null-logger)
* [Null Logger Code Climate](https://codeclimate.com/github/karafka/null-logger)

## Note on Patches/Pull Requests

Fork the project.
Make your feature addition or bug fix.
Add tests for it. This is important so I don't break it in a future version unintentionally.
Commit, do not mess with Rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull). Send me a pull request. Bonus points for topic branches.

[![coditsu](https://coditsu.io/assets/quality_bar.svg)](https://coditsu.io)

Each pull request must pass our quality requirements. To check if everything is as it should be, we use [Coditsu](https://coditsu.io) that combinse multiple linters and code analyzers. Unfortunately, for now it is invite-only based, so just ping us and we will give you access to the quality results.

Please run:

```bash
bundle exec rake
```

to check if everything is in order. After that you can submit a pull request.
