require 'spec_helper'

RSpec.describe NullLogger::VERSION do
  it { expect { described_class }.not_to raise_error }
end
