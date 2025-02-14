require 'pry-nav'
class Calculator
  def self.string_addition(string_number)
    string_number = separator_and_string(string_number)
    return string_number.split(',').map(&:to_i).sum.to_i
  end

  def self.separator_and_string(str)
    if str.start_with?("//")
      dynamic_string = str[2..-1].split("\n")
      separator = dynamic_string[0]
      str = dynamic_string[1]
    else
      separator = /\n/
    end
    return str.gsub(separator, ',')
  end
end 