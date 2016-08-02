require './dish'

class Menu
  def initialize
    @menu = []
    @menu << Dish.new("Margherita")
    @menu << Dish.new("Napoletana")
    @menu << Dish.new("Peperoni")
  end

  def contents
    @menu
  end
end