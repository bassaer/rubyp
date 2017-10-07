require 'spec_helper'

describe Message do
  describe '#hello' do
    it { expect(Message.hello).to eq 'Hello' }
  end
end

