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
    expect(logger.debug?).to be_falsey
  end

  it 'returns false for info?' do
    expect(logger.info?).to be_falsey
  end

  it 'returns false for error?' do
    expect(logger.error?).to be_falsey
  end

  it 'returns false for warn?' do
    expect(logger.warn?).to be_falsey
  end

  it 'returns false for fatal?' do
    expect(logger.fatal?).to be_falsey
  end
end
