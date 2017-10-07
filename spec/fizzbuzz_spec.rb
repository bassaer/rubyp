require 'spec_helper'

describe 'FizzBuzz' do
  describe '#run' do
    context 'multiple of 3' do
      it 'should return Fizz' do
        expect(FizzBuzz.run(3)).to eq('Fizz')
        expect(FizzBuzz.run(6)).to eq('Fizz')
        expect(FizzBuzz.run(9)).to eq('Fizz')
        expect(FizzBuzz.run(12)).to eq('Fizz')
      end
    end

    context 'multiple of 5' do
      it 'should return Buzz' do
        expect(FizzBuzz.run(5)).to eq('Buzz')
        expect(FizzBuzz.run(10)).to eq('Buzz')
      end
    end

    context 'multiple of 15' do
      it 'should return FizzBuzz' do
        expect(FizzBuzz.run(15)).to eq('FizzBuzz')
      end
    end

    context 'number except 3 and 5' do
      it 'should return the number' do
        expect(FizzBuzz.run(1)).to eq(1)
        expect(FizzBuzz.run(2)).to eq(2)
        expect(FizzBuzz.run(4)).to eq(4)
      end
    end

    context 'argument other than positive integer' do
      it 'should return Error' do
        expect(FizzBuzz.run('fizz')).to eq('Error')
        expect(FizzBuzz.run(-3)).to eq('Error')
      end
    end
  end
end

