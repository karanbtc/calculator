require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  describe '#add values' do
    it 'returns 0 for an empty string' do
      expect(Calculator.string_addition("")).to eq(0)
    end

    it 'returns single number' do
      expect(Calculator.string_addition("1")).to eq(1)
    end

    it 'returns summation of multiple number' do
      expect(Calculator.string_addition("1,5")).to eq(6)
    end

    it 'returns summation of multiple number with multiple static separation' do
      expect(Calculator.string_addition("1\n2,3")).to eq(6)
    end
    
    it 'returns summation of multiple number with dynamic separation' do
      expect(Calculator.string_addition("//;\n1;2")).to eq(3)
    end

    it 'returns error message for negative numbers' do
      expect { Calculator.string_addition("1,-2,3") }
      .to raise_error do |error|
        expect(error).to be_a(RuntimeError)
        expect(error.message).to eq("negative numbers not allowed -2")
      end
    end    
  end
end