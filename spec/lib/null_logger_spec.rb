require 'spec_helper'

# This file basically only requires stuff
RSpec.describe 'NullLogger' do
  it 'should be defined' do
    expect(defined?(NullLogger)).to eq 'constant'
  end
end
