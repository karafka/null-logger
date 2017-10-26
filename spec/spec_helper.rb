# frozen_string_literal: true

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'simplecov'

# @return [Boolean] true if we run against jruby
def jruby?
  ENV['RUBY_VERSION']&.include?('jruby')
end

# Don't include unnecessary stuff into rcov
SimpleCov.start do
  add_filter '/spec/'
  add_filter '/vendor/'
  add_filter '/gems/'
  add_filter '/.bundle/'
  add_filter '/doc/'
  add_filter '/config/'
  merge_timeout 600
end

# jruby counts coverage a bit differently, so we ignore that
SimpleCov.minimum_coverage jruby? ? 70 : 100

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

require 'null_logger'
