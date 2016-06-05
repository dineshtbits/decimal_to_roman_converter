class RomanNumberConverter
  attr_reader :roman_map

  def initialize
    @roman_map = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }
  end

  def convert(input)
    romans = []
    while input > 0
      highest = @roman_map.keys.select{|v| v <= input}.max
      romans << @roman_map[highest]
      input = input - highest
    end
    romans.join("")
  end
end
