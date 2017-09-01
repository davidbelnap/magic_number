require 'pry'
require 'to_words'

def input
puts "Input any positive single number or type 'quit'."
@number = gets.downcase.strip
	case choice = @number
		when "quit"
			exit
		else
			magic
	end
end

def magic
	if @number == 4
		exit
	else
		number = @number.to_words
		puts "#{number} is #{number.length}"
		@number = number.length
		magic
	end
end

input