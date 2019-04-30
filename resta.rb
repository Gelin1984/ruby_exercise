class Food
  attr_reader :name, :ranking, :max_player_count, :difficulty_level
 
 def initialize(name, spiciness, price, speed)
 @name = name
 @spiciness = spiciness
 @price = price
 @speec = speed
end
end

def valid_spice_number?(user_spice_input)
  user_spice_input >= 1
  user_spice_input <= 10
 end

 def valid_price_number?(user_price_input)
  user_price_input >= 1
  user_price_input <= 10
 end

 def valid_speed_number?(user_speed_input)
  user_price_input >= 1
  user_price_input <= 10
 end


# puts valid_spice_number?(0)


puts "How spicy should your dish be?"
user_spice_input = gets.to_i
if valid_spice_number?(user_spice_input)
	puts "how cheap should your dish be?"
	user_price_input = gets.to_i
	if valid_price_number?(user_spice_input)
		puts "how fast should your dish be?"
		user_speed_input = gets.to_i
		if valid_speed_number?(user_speed_input)
			s
else puts "wrong number"
end
end
end



