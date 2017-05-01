class Shoe
  attr_reader :color, :size, :fit

  # Change separate options into one.
  def initialize(input_options)
    @size = input_options[:size]
    @fit = input_options[:fit]
    @color = input_options[:color]
    @dressy = input_options[:dressy]
  end

  def print_info
    puts "This shoe is a #{@size} with a #{@fit} fit. It comes in #{@color}. Formal? #{@dressy}."
  end
end

# Making the new shoe a hash as opposed to separate strings.
shoe_1 = Shoe.new({size: 7, fit: "medium", color: "red", dressy: true})
shoe_2 = Shoe.new({size: 4, fit: "narrow", color: "navy/white", dressy: false})
puts shoe_2.color.size * 2
puts shoe_1.fit.upcase
shoe_1.print_info

# Attached different ruby methods for kicks.