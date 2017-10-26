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
  def unknown(*)
  end

  def fatal(*)
  end

  def fatal?
    false
  end

  def error(*)
  end

  def error?
    false
  end

  def warn(*)
  end

  def warn?
    false
  end

  def info(*)
  end

  def info?
    false
  end

  def debug(*)
  end

  def debug?
    false
  end
end
