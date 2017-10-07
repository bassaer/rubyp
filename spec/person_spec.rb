require 'spec_helper'

describe Person do
  let(:bob) { Person.new('bob') }

  describe '.hello' do
    it { expect(bob.hello).to eq 'Hello, my name is bob.' }
  end
end

