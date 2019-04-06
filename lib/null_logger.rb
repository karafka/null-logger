# frozen_string_literal: true

# Null logger class. This is essentially the same as sending data down the
# `/dev/null` black hole.
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
  # @param _args Anything that we want to ignore
  # @return [nil]
  def unknown(*_args)
    nil
  end

  # @param _args Anything that we want to ignore
  # @return [nil]
  def fatal(*_args)
    nil
  end

  # @return [FALSE]
  def fatal?
    false
  end

  # @param _args Anything that we want to ignore
  # @return [nil]
  def error(*_args)
    nil
  end

  # @return [FALSE]
  def error?
    false
  end

  # @param _args Anything that we want to ignore
  # @return [nil]
  def warn(*_args)
    nil
  end

  # @return [FALSE]
  def warn?
    false
  end

  # @param _args Anything that we want to ignore
  # @return [nil]
  def info(*_args)
    nil
  end

  # @return [FALSE]
  def info?
    false
  end

  # @param _args Anything that we want to ignore
  # @return [nil]
  def debug(*_args)
    nil
  end

  # @return [FALSE]
  def debug?
    false
  end
end
