# Null logger class
# Is used when logger is not defined
class NullLogger
  # Possible log levels from ruby Logger::Severity class
  LOG_LEVELS = %w( unknown fatal error warn info debug )

  # Returns nil for any method call from LOG_LEVELS array
  # Instead raise NoMethodError
  def method_missing(method_name, *args, &block)
    return nil if LOG_LEVELS.include?(method_name.to_s)
    super(method_name, *args, &block)
  end
end
