class Waiter
  def greet_guest
    p "Good day. What can I do for you?"
  end

  def serve_guest
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"

    take_order gets.chomp.to_i
  end

  def take_order(choice)

  end
end