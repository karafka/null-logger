base_path = File.dirname(__FILE__) + '/null_logger'

%w( logger version ).each do |file|
  require File.join(base_path, file)
end
