require 'rspec'
require_relative '../fizz_buzz_1'

describe FizzBuzz1 do

  context 'with a FizzBuzz1 instance' do

    let(:fizz_buzz) { FizzBuzz1.new }

    describe '#run!' do
      it 'should call the print_output method 100 times' do
        expect_any_instance_of(FizzBuzz1).to receive(:print_output).exactly(100).times
        fizz_buzz.run!
      end
    end

    describe '#print_output' do
      context 'when the integer is a FizzBuzz' do
        it 'should print FizzBuzz' do
          expect(STDOUT).to receive(:puts).with('FizzBuzz')
          fizz_buzz.print_output(15)
        end
      end

      context 'when the integer is a Fizz' do
        it 'should print Fizz' do
          expect(STDOUT).to receive(:puts).with('Fizz')
          fizz_buzz.print_output(3)
        end
      end

      context 'when the integer is a Buzz' do
        it 'should print Buzz' do
          expect(STDOUT).to receive(:puts).with('Buzz')
          fizz_buzz.print_output(5)
        end
      end
    end

    describe '#fizz?' do
      context 'when integer is divisible by 3' do
        it 'should return true' do
          expect(fizz_buzz.fizz?(3)).to be true
        end
      end

      context 'when integer is not divisible by 3' do
        it 'should return false' do
          expect(fizz_buzz.fizz?(5)).to be false
        end
      end
    end

    describe '#buzz?' do
      context 'when integer is divisible by 5' do
        it 'should return true' do
          expect(fizz_buzz.buzz?(5)).to be true
        end
      end

      context 'when integer is not divisible by 5' do
        it 'should return false' do
          expect(fizz_buzz.buzz?(6)).to be false
        end
      end
    end

    describe '#fizz_buzz?' do
      context 'when integer is divisible by 15' do
        it 'should return true' do
          expect(fizz_buzz.fizz_buzz?(30)).to be true
        end
      end

      context 'when integer is not divisible by 15' do
        it 'should return false' do
          expect(fizz_buzz.fizz_buzz?(35)).to be false
        end
      end
    end

  end

end
