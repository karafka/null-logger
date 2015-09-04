module NullLogger
  # Null logger class
  # Is used when logger is not defined
  class Logger
    # Returns nil for any method call
    def method_missing(*_args, &_block)
      nil
    end
  end
end
