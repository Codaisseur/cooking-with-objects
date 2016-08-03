class Ingredient

  TOMATO = "Tomato"
	DOUGH = "Dough"
	MOZZARELLA = "Mozzarella"
	ANCHOVIES = "Anchovies"
	PEPERONI = "Peperoni"

  def initialize name, amount
		@name = name
		@amount = amount
  end

  def name
    @name
  end

  def amount
    @amount
  end

  def use(amount)
		@amount -= amount
	end
end