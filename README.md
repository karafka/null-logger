# Null Logger

[![Build Status](https://travis-ci.org/karafka/null-logger.svg?branch=master)](https://travis-ci.org/karafka/null-logger)
[![Code Climate](https://codeclimate.com/github/karafka/null-logger/badges/gpa.svg)](https://codeclimate.com/github/karafka/null-logger)

A simple logger that does not log anything. It can be used for defining an interface for other loggers


## Installation

Add gem to your Gemfile
```ruby
  gem 'null-logger'
```

## Usage
On NullLogger instance you can call method which corresponds to ruby log levels (unknown, fatal, error, warn, info, debug), ex:

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
