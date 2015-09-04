require 'spec_helper'

RSpec.describe NullLogger::Logger do
  subject { described_class.new }

  it 'return nil if call method from LOG_LEVELS array' do
    expect(subject.warn).to eq nil
  end

  it 'raise exception if call method which not exist in LOG_LEVELS array' do
    expect { subject.warnnnn }.to raise_error(NoMethodError)
  end
end
