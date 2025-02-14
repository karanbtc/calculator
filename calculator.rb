class Calculator
  def self.string_addition(string_number)
    string_number = separator_and_string(string_number)
    values = string_number.split(',').map(&:to_i)
    check_negative_number(values)
    return values.sum
  end

  private

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

  def self.check_negative_number(values)
    negative_numbers = values.select(&:negative?)
    raise "negative numbers not allowed #{negative_numbers.join(",")}" if !negative_numbers.nil? && negative_numbers.any?
  end
end