require 'pry-nav'
class Calculator
  def self.string_addition(string_number)
    if string_number.start_with?("//")
      dynamic_string = string_number[2..-1].split("\n")
      spearator = dynamic_string[0]
      str = dynamic_string[1].gsub(spearator, ',')
      return str.split(',').map(&:to_i).sum.to_i
    else
      return string_number.gsub(/\n/, ',').split(',').map(&:to_i).sum.to_i
    end
  end
end 