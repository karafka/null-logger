# Null Logger [Unmaintained]

Note: This library is no longer in use in the Karafka ecosystem. It was developed for Karafka versions prior to 1.0. If you're using this library and want to take it over, please ping us.

[![Build Status](https://github.com/karafka/null-logger/workflows/ci/badge.svg)](https://github.com/karafka/null-logger/actions?query=workflow%3Aci)
[![Gem Version](https://badge.fury.io/rb/null-logger.svg)](http://badge.fury.io/rb/null-logger)
[![Join the chat at https://slack.karafka.io](https://raw.githubusercontent.com/karafka/misc/master/slack.svg)](https://slack.karafka.io)

A simple logger that does not log anything. It can be used for defining an interface for other loggers.

## Installation

Add the gem to your Gemfile
```ruby
  gem 'null-logger', require: 'null_logger'
```

## Usage
On NullLogger instance you can call methods which correspond to Ruby Logger log levels (unknown, fatal, error, warn, info, debug), ex:

```ruby
  NullLogger.new.fatal # return nil
  NullLogger.new.wrong_method # raise NoMethodError
```

NullLogger defines an interface for real logger instance, ex:

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
