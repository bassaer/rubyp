require 'spec_helper'

describe Time do
  before do
    allow(Time).to receive(:today).and_return('2017-01-01')
  end

  describe '#today' do
    it { expect(Time.today).to eq '2017-01-01' }
  end
end

