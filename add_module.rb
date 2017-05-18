# Using previous example from class_inheritance. Add example of a module.
# Module similar to inheritace, allows more room for specifity. For example, 
# what is one specific thing other then the obvious size, color, etc that 
# I want my shoes and boots to have in common? I'd like to be able to order 
# both types!

module OrderShoe
  def order_pair
    puts "Placing order...for size #{@size} in #{@color}."
  end
end

# Above module, looks just like a class.

class Shoe
  include OrderShoe #"include" + module name#
  attr_reader :size, :fit, :water_proof

  def initialize(input_options)
    @size = input_options[:size]
    @fit = input_options[:fit]
    @color = input_options[:color]
    @dressy = input_options[:dressy]
    @water_proof = input_options[:water_proof]
  end

  def print_info
    puts "This shoe is a #{@size} with a #{@fit} fit. It comes in #{@color}."
  end

  def increase_size
    @size = 1 + @size
  end
end

shoe_1 = Shoe.new(size: 8, fit: "medium", color: "black", water_proof: false)
shoe_2 = Shoe.new(size: 4, fit: "narrow", color: "white/navy", waterproof: false)
shoe_3 = Shoe.new(size: 9, fit: "wide", color: "bronze", waterproof: "water_proof")

class Boot < Shoe
  def rain
    puts "This boot in a size #{@size} is #{@water_proof}! It can endure the rain!"
  end
end

boot_1 = Boot.new(size: 4, fit: "wide", color: "yellow", water_proof: "waterproof")
boot_1.print_info
boot_1.rain

shoe_1.order_pair
boot_1.order_pair

