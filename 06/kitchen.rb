class Kitchen
  def order(dish)
		p "KITCHEN: Order received for #{dish.name}"
    p "Im gonna need some:"

    dish.ingredients.each do |ingredient|
      p "- #{ingredient.name}"
    end
  end
end