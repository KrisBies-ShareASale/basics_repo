class Shoe
   attr_reader :size, :fit, :water_proof
  def initialize(input_options)
    @size = input_options[:size]
    @fit = input_options[:fit]
    @color = input_options[:color]
    @dressy = input_options[:dressy]
    @water_proof = input_options[:water_proof]
  end

  def print_info
    puts "This shoe is a #{@size} with a #{@fit} fit. It comes in #{@color}. Formal? #{@dressy}."
  end

  def increase_size
    @size = 1 + @size
  end
end
# Use attr_reader in subsitution to find single attribute by itself
# instead of writing a method for each

shoe_1 = Shoe.new(size: 8, fit: "medium", color: "black", water_proof: false)
shoe_2 = Shoe.new(size: 4, fit: "narrow", color: "white/navy", waterproof: false)
shoe_3 = Shoe.new(size: 9, fit: "wide", color: "bronze", waterproof: "water_proof")
shoe_1.print_info
shoe_2.print_info
shoe_3.print_info
shoe_3.increase_size
puts shoe_3.fit.upcase

# New example using inheritance
# Using the < symbol, Class Boot will inherit everything from the Shoe Class
# plus one other method, def rain, for itself.

class Boot < Shoe
  def rain
    puts "This boot in a size #{@size} is #{@water_proof}! It can endure the rain!"
  end
end

boot_1 = Boot.new(size: 8, fit: "wide", color: "black", water_proof: "waterproof")
boot_1.print_info
boot_1.rain


