require 'spec_helper'

RSpec.describe NullLogger do
  it { expect { VERSION }.not_to raise_error }
end
