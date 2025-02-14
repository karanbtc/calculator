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

    it 'returns summation of multiple number with multiple separation' do
      expect(Calculator.string_addition("1\n2,3")).to eq(6)
    end
  end
end