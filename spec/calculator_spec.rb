require 'rspec'
require_relative '../calculator'

RSpec.describe Calculator do
  describe '#add values' do
    it 'returns 0 for an empty string' do
      expect(Calculator.string_addition("")).to eq(0)
    end
  end
end