# Null Logger

[![Build Status](https://travis-ci.org/karafka/null-logger.svg?branch=master)](https://travis-ci.org/karafka/null-logger)
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
* [Null Logger Travis CI](https://travis-ci.org/karafka/null-logger)
* [Null Logger Coditsu](https://app.coditsu.io/karafka/repositories/null-logger)

## Note on contributions

First, thank you for considering contributing to NullLogger! It's people like you that make the open source community such a great community!

Each pull request must pass all the rspec specs and meet our quality requirements.

To check if everything is as it should be, we use [Coditsu](https://coditsu.io) that combines multiple linters and code analyzers for both code and documentation. Once you're done with your changes, submit a pull request.

Coditsu will automatically check your work against our quality standards. You can find your commit check results on the [builds page](https://app.coditsu.io/karafka/repositories/null-logger/builds/commit_builds) of NullLogger repository.

[![coditsu](https://coditsu.io/assets/quality_bar.svg)](https://app.coditsu.io/karafka/repositories/null-logger/builds/commit_builds)

