# frozen_string_literal: true

RSpec.describe NullLogger do
  subject { logger }

  let(:logger) { described_class.new }

  it { is_expected.to respond_to(:unknown) }
  it { is_expected.to respond_to(:fatal) }
  it { is_expected.to respond_to(:error) }
  it { is_expected.to respond_to(:warn) }
  it { is_expected.to respond_to(:info) }
  it { is_expected.to respond_to(:debug) }

  it 'returns false for debug?' do
    expect(logger).not_to be_debug
  end

  it 'returns false for info?' do
    expect(logger).not_to be_info
  end

  it 'returns false for error?' do
    expect(logger).not_to be_error
  end

  it 'returns false for warn?' do
    expect(logger).not_to be_warn
  end

  it 'returns false for fatal?' do
    expect(logger).not_to be_fatal
  end
end
