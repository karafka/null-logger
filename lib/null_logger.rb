# frozen_string_literal: true

# Null logger class
# Is used when logger is not defined
class NullLogger
  # Possible log levels from ruby Logger::Severity class
  LOG_LEVELS = %w[
    unknown
    fatal
    error
    warn
    info
    debug
  ].freeze

  # @return [Boolean] true if we can handle this missing method, otherwise false
  # @param method_name [String, Symbol] method name
  # @param include_private [Boolean] should we include private methods as well
  def respond_to_missing?(method_name, include_private = false)
    LOG_LEVELS.include?(method_name.to_s) || super
  end

  # Returns nil for any method call from LOG_LEVELS array
  # Instead raise NoMethodError
  # @example:
  #   NullLogger.new.fatal -> return nil
  #   NullLogger.new.wrong_method -> raise NoMethodError
  def method_missing(method_name, *args, &block)
    return nil if LOG_LEVELS.include?(method_name.to_s)
    super
  end
end
