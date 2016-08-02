class Waiter
	DIALOGUE = ["Eat a pizza", "Leave"]
	
	def initialize menu, kitchen, tab
		@menu = menu
		@kitchen = kitchen
		@tab = tab
	end
	
	def greet_guest
		@serving = true
		p "Good afternoon, What can I do for you?"
	end
	
	def serve_guests
		DIALOGUE.each_with_index do |option, index|
			p "#{index+1}. #{option}"
		end
		take_order(gets.chomp.to_i)
	end

	def take_order(input)
		case input
		when 1
			list_menu
			order_food gets.chomp.to_i
		when 2
			p ("here be drink options")
		when 3
			p ("please pay when you leave")
			@serving = false
		end
	end

	def order_food(input)
		item = @menu.list[ input - 1 ]
		@tab.add item
		@kitchen.order item
	end

	def serving?
		return @serving
	end

	def list_menu
		@menu.list.each_with_index do |recipe, index|
			p "#{index+1}. #{recipe.name}"
		end
	end
end	