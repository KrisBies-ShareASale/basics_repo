# Modeling Data using four different examples. 

# person1 utilizes a hash with strings.

person1 = {
  "first_name" => "Walter", 
  "last_name" => "Skinner", 
  "occupation" => "FBI",
  "salary" => 70000,
  "trustworthy" => true
}

# person2 utilizes a hash with symbols(known as javascript notation).

person2 = {
  first_name: "Alex",
  last_name: "Krychek",
  occupation: "Rebel",
  salary: 111000,
  trustworthy: false
}

# person3 is a combination of symbol/hash representation.
person3 = {
  :first_name => "Dana",
  :last_name => "Scully",
  :occupation => "Doctor",
  :salary => 111000,
  :trustworthy => true
}

puts "#{person1['first_name']} #{person1['last_name']} is a #{person1['occupation']} and is trustworthy? #{person1['trustworthy']}"
puts "#{person2['first_name']} #{person2['last_name']} is a #{person2['occupation']} and is trustworthy? #{person2['trustworthy']}"

puts "#{person2[:first_name]} #{person2[:last_name]} is a #{person2[:occupation]}, makes #{person2[:salary]} and is trustworthy? #{person2[:trustworthy]}"



# Store Item Example with shoes. 


shoe_1 = {
  size: 7,
  fit: "medium",
  color: "red",
  dressy: true
}

shoe_2 = {
  size: 4,
  fit: "narrow",
  color: "white/navy",
  dressy: false
}

shoe_3 = {
  size: 9,
  fit: "wide",
  color: "bronze",
  dressy: true
}

puts "This shoe comes in a size #{shoe_1[:size]} #{shoe_1[:color]}, it is a #{shoe_1[:fit]} fit. Dressy? #{shoe_1[:dressy]}"
puts "This shoe comes in a size #{shoe_2[:size]} #{shoe_2[:color]}, it is a #{shoe_2[:fit]} fit. Dressy? #{shoe_2[:dressy]}"
puts "This shoe comes in a size #{shoe_3[:size]} #{shoe_3[:color]}, it is a #{shoe_3[:fit]} fit. Dressy? #{shoe_3[:dressy]}"



# Class Format

class Shoe
  attr_reader :color, :size, :fit
  def initialize(input_size, input_fit, input_color, input_dressy)
    @size = input_size
    @fit = input_fit
    @color = input_color
    @dressy = input_dressy
  end

  def print_info
    puts "This shoe is a #{@size} with a #{@fit} fit. It comes in #{@color}. Formal? #{@dressy}."
  end

  def increase_size
    @size = 1 + @size
  end

  def color 
    @color
  end
end
# Use attr_reader in subsitution to find single attribute by itself
# instead of writing a method for each


shoe_1 = Shoe.new(7, "medium", "red", true)
shoe_2 = Shoe.new(4, "narrow", "white/navy", false)
shoe_3 = Shoe.new(9, "wide", "bronze", true)
shoe_1.print_info
shoe_2.print_info
shoe_3.print_info
shoe_3.increase_size
shoe_3.print_info
puts shoe_2.color.upcase
puts shoe_3.fit





