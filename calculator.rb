class Calculator
  def self.string_addition(string_number)
    return string_number.split(/,|\n/).map(&:to_i).sum.to_i
  end
end 