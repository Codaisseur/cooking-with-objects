require './menu'

class Waiter
	OPTIONS = ["Eat a pizza", "Have a drink", "Pay and leave"]
	def initialize menu, kitchen, tab
		@menu = menu
		@kitchen = kitchen
		@tab = tab
	end
	def greet_guest
		@serving = true
		p "Good afternoon, What can I do for you?"
	end
	def inquire_guest
		OPTIONS.each_with_index do |option, index|
			p "#{index+1}. #{option}"
		end
	end
	def handle_input input
		case input
		when 1
			@menu.list.each_with_index do |recipe, index|
				p "#{index+1}. #{recipe.name}"
			end
			handle_order gets.chomp.to_i
		when 2
			p ("here be drink options")
		when 3
			p ("please pay when you leave")
			@serving = false
		end
	end

	def handle_order input
		item = @menu.list[ input - 1 ]
		@tab.add item
		@kitchen.order item
	end

	def serving?
		return @serving
	end

	def list_menu
		
	end
end	