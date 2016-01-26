require 'spec_helper'

RSpec.describe NullLogger do
  it { expect { NullLogger::VERSION }.not_to raise_error }
end
