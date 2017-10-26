# frozen_string_literal: true

# Null logger class. This is essentially the same as sending data down the
# `/dev/null` blackhole.
#
# @example Basic Usage
#
#   logger = NullLogger.new
#   Rails.logger = logger
#
#
# @example Basic Pattern Usage
#   class SomeService
#     def initialize(options = {})
#       @logger = options[:logger] || NullLogger.new
#     end
#
#     def perform
#       @logger.debug -> { "do some work here" }
#       # .. ..
#       @logger.info -> { "finished working" }
#     end
#   end
#
#   service = SomeService.new(logger: Logger.new(STDOUT))
#   service.perform
#
#   silent = SomeService.new(logger: NullLogger.new
#   silent.perform
#
class NullLogger
  # @param _ Anything that we want to ignore
  # @return [nil]
  def unknown(*_)
    nil
  end

  # @param _ Anything that we want to ignore
  # @return [nil]
  def fatal(*_)
    nil
  end

  # @return [FALSE]
  def fatal?
    false
  end

  # @param _ Anything that we want to ignore
  # @return [nil]
  def error(*_)
    nil
  end

  # @return [FALSE]
  def error?
    false
  end

  # @param _ Anything that we want to ignore
  # @return [nil]
  def warn(*_)
    nil
  end

  # @return [FALSE]
  def warn?
    false
  end

  # @param _ Anything that we want to ignore
  # @return [nil]
  def info(*_)
    nil
  end

  # @return [FALSE]
  def info?
    false
  end

  # @param _ Anything that we want to ignore
  # @return [nil]
  def debug(*_)
    nil
  end

  # @return [FALSE]
  def debug?
    false
  end
end
