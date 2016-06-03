require 'spec_helper'

describe "convering normal number to roman" do
  it "should be an instance of RomanConverter" do
    expect(RomanNumberConverter.new).to an_instance_of(RomanNumberConverter)
  end
  @test_data = { 1 => "I", 6 => "VI", 12 => "XII", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }
  @test_data.each do |decimal, roman|
    it "should return #{roman} if #{decimal} is passed" do
      converted_number = RomanNumberConverter.new.convert(decimal)
      expect(converted_number).to eql(roman)
    end
  end
end