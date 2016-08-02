class Waiter
  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
  end

  def greet_guest
    p "Good day. Welcome to our lovely restaurant"
  end

  def serve_guest
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"

    take_order gets.chomp.to_i
  end

  def take_order(order_number)
    case order_number
      when 1
        "Let me get the menu"
        list_menu
        order_food gets.chomp.to_i
      when 2
        "Thank you for your visit"
      else
        "I really don't understand"
    end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      p "#{index}. #{dish.name}"
    end
  end


  def order_food(choice)
		dish = @menu.contents[ choice ]
    @kitchen.order(dish)
	end


end