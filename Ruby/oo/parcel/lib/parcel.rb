class Parcel
	def initialize(h, w, d, lb)
		@h = h
		@w = w
		@d = d
		@lb = lb
	end
	def volume()
		@h * @w * @d
	end

	def cost_to_ship()
		@lb * 1.10
	end
end

def main_loop()
	loop do
		puts "Welcome to Parcel Shipping Calculator!"
		puts "Please enter height:"
		height = gets.to_i
		puts "Please enter width:"
		width = gets.to_i
		puts "Please enter depth:"
		depth = gets.to_i
		puts "Volume = #{height * width * depth}"
		puts "What is the weight of the package?"
		weight = gets.to_i
		puts "It will cost $#{sprintf('%.2f', (weight * 1.15))} to mail your package."
		exit
	end
end

main_loop()
