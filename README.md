#[Cooking 101](http://s2.quickmeme.com/img/3c/3ca2955b995c2b02bf1d821a8cf7066c5689eb3e2a4ebc7a80bfdf501290669c.jpg)

We will learn today to cook with objects. We will start with creating a list of all objects of a pizzeria. 

Because with objects oriented programming you want your code to work like a pizzeria. 

- Waiter: You talk to the waiter. He takes your order, serves the food, checks if you want anything else and eventually you can pay the bill. 
- Kitchen: In the kitchen the food is prepared.
- Dish: A dish is a collection of ingredients prepared in a certain order.
- Menu: A collection of recipes with available ingredients
- Ingredients: Part of a recipe. 
- Stock: Amount of ingredients available
- Storageroom: Holds the stock

Lets start by setting up the project:

- open your terminal
- create a new directory 
- go into the directory
- initialize a new git repository `git init`

## [01] As a guest. I want to be greeted by the waiter when I enter the pizzeria. So that I feel like I am welcome.

**Tasks:**

1. create a waiter
2. add a method to the waiter to greet a guest
3. create a pizzeria
4. require the waiter in the pizzeria
5. make a instance of the waiter in the pizzeria
6. call the greeting method
7. test if it all works
8. save your progress

### 1. Create a waiter

- Create a file `waiter.rb`
- Create a class in this new file. We create a class like: 

```ruby
class Waiter
end
```

### 2. Add a method to the Waiter to greet a guest

- add a method `greet_guest`
- the method should print a greeting

```ruby
class Waiter
    def greet_guest
	p "Good day. Welcome to our lovely restaurant"
   end
end
```

### 3. Create a pizzeria

- create a file `pizzeria.rb`

### 4. Require the waiter in the pizzeria

- at the top of `pizzeria.rb` add `require './waiter'` to include the file.

### 5. Make a instance of the waiter in the pizzeria

A instance is when we create a object from a class. You can create a object by calling the constructor method, `new`, and by default it takes no arguments. 

- Create a new instance of `Waiter` and assign it to a variable `w = Waiter.new`

### 6. Call the greeting method

- Call a method on a object by placing it after a dot. Like `object.method`. So to call the `greet_guest` method on the object stored in `w` you can call `w.greet_guest`

### 7. Test if it all works

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: `"Good day. Welcome to our lovely restaurant"`

### 8. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'greetings'`

## [02] As a guest. I would like the waiter to help me. So that I can have a bite to eat

**Tasks:**

1. Create a method for the waiter to serve_guests.
2. The serve_guests method should print a list of options for the guests
3. A guest should be able to choose from the options by their number.
4. After a choice is made, the waiter can take action
5. Call the serve_guest method from the pizzeria
6. Test if it all works
7. save your progress

### 1. Create a method for the waiter to serve_guests.

```ruby
  def serve_guest    
  end
```
 
### 2. The serve_guests method should print a list of options for the guests

Add a small menu to the body of the `serve_guest` method. For example

```
    p "How can I be of service?"
    p "1. Would you like to order a pizza?"
    p "2. Would you like to leave?"
```    

### 3. A guest should be able to choose from the options by their number.

Call the `gets` method at the bottom of the serve_guest method and cast it to a integer 
 
```ruby
choice = gets.chomp.to_i  
``` 

### 4. After a choice is made, the waiter can take action

- create a method to handle the input of the `gets` method. When we create a method that needs input from another method, you have to add this data to its arguments list. 

```ruby
def take_order(order_number)
end
```

- call the `take_order` method instead of assigning the result of gets to a variable

```ruby
take_order(gets.chomp.to_i)
```

- if the choice is 1 or 2 or none of these, give appropriate response. To easily do this we can use a case statement. Add the following content to the take_order function.

```ruby
case order_number
  when 1
    p "Let me get the menu"
  when 2
   p  "Thank you for your visit"
  else
    p "I really don't understand"
end
```

### 5. Call the serve_guest method from the pizzeria 

- on the waiter object stored in the `w` variable, call the `serve_guest` method.

```
w.serve_guest
```

### 6. Test if it all works

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```
"Good day. Welcome to our lovely restaurant"`
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Wait for input
- Exit


### 7. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'choices'`


## [03] As a waiter. I would like to know the menu. So that I can help the guests

A menu is a combination of dishes. 

**Tasks:**

1. create a class for menu
2. create a class for dish
3. add a initialize method to the menu to create a array of dishes
4. add a initialize method to the dish
5. create a array of dishes calling its constructor with a name
6. let the waiter know about the menu
7. let the waiter tell guests the contents of the menu
8. test your progress
9. Improve the display of dishes
10. test your progress
11. Save your progress

### 1. create a class for menu

- Create a file `menu.rb`
- Create a class in this new file 

```ruby
class Menu
end
```

###2. create a class for dish

- Create a file `dish.rb`
- Create a class in this new file 

```ruby
class Dish
end
```


###3. add a initialize method to the menu to create a array of dishes

When a object is constructed, its initialize method is called. So when you call Menu.new to create a object of the menu class, it searches for the initialize method in the Menu class.
 
- Add the initialize method to the Menu class

```ruby
def initialize
end
```

- Inside the initialize method of Menu we are going create the following dishes. Margherita, Napoletana, Peperoni

###4. Add a initialize method to the dish

- To create a `Dish` with a name, you can use the initialize method again. Add a initialize method (constructor) to the `Dish` class that takes a `dish_name` as a argument.

```ruby
def initialize(dish_name)
end
```

- Assign the argument of the constructor to a instance variable `@name`

```ruby
def initialize(dish_name)
  @name = dish_name
end
```

A *instance variable* is available to all methods of a class instance (object). Unlike a normal variable which is only available inside the method where it was created.

###5. Create a array of dishes calling its constructor with a name 

- require the file containing the dish class inside the file containing the menu class

```ruby
require './dish'
```

- create a array inside the initialize method of the Menu class and assign it to a instance variable

```ruby
@menu = []
```

- create instances of the dish class and add them to the variable holding the array

```ruby
@menu << Dish.new("Margherita")
@menu << Dish.new("Napoletana")
@menu << Dish.new("Peperoni")
```

###6. let the waiter know about the menu

- require the file containing the menu in the pizzeria file. 

```ruby
require './menu'
```

- Create a instance of the menu class by calling its constructor. 

```ruby
menu = Menu.new
```

- Add a constructor method to the waiter class that takes a argument for menu.
- Assign the argument to a instance variable.
 
```ruby
def initialize(menu)
  @menu = menu  
end
```

- Change the call to the constructor of Waiter in Pizzeria to receive a menu. 

```ruby
w = Waiter.new(menu)
```


###7. let the waiter tell guests the contents of the menu

- define a method in the `Menu` class to return the value of the instance variable.

```ruby
def contents
  @menu
end
```

 

- create a `list_menu` method in the `Waiter` class to list all the dishes

```
def list_menu
  @menu.contents.each do |dish|
    p "#{dish}"
  end
end
```
- call the `list_menu` method in the case statement

```
  def take_order(order_number)
    case order_number
      when 1
        "Let me get the menu"
        list_menu
```

###8. test your progress

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```bash
"Good day. Welcome to our lovely restaurant"
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Choose 1
- Should display: 

```bash
"#<Dish:0x007ff25b058048>"
"#<Dish:0x007ff25b058160>"
"#<Dish:0x007ff25b058ae8>"
```

###9. Improve the display of dishes

- add a method to dish to return its name

```ruby
def name
  @name
end
```

- In the loop printing the dishes, call the `name` method to display the name

```ruby
def list_menu
  @menu.contents.each do |recipe|
    p "#{recipe.name}"
  end
end
```

###10. test your program

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```
"Good day. Welcome to our lovely restaurant"
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Choose 1
- Should display: 

```
"Margherita"
"Napoletana"
"Peperoni"
```

### 11. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'choices'`

## [04] As a waiter. I would like to be able to order a item from the kitchen. So that the guests stop bothering me

**Tasks:**

1. add a number to a dish
2. allow the ordering of food by this number
3. call the order food after the menu was listed and supply the number of the dish
4. add a kitchen class
5. add a method to kitchen so it can receive orders of dishes
6. let the waiter know about the kitchen
7. let the kitchen know about the order
8. test your progress
9. save your progress


### 1. Modify the loop that lists the menu, to also list a number that can be used by a guest

```ruby
def list_menu
  @menu.contents.each_with_index do |dish, index|
    p "#{index}. #{dish.name}"
  end
end
```

### 2. Create a method to order food from the kitchen in waiter based on the guests choice

```ruby
def order_food(choice)
  dish = @menu.contents[ choice ]
end
```

this method will assign a dish object to the dish variable.

### 3. Call the `order_food` method after calling the `list_menu` method

```ruby
"Let me get the menu"
list_menu
order_food(gets.chomp.to_i)
```

### 4. create a class for the kitchen

- Create a file `kitchen.rb`
- Create a class in this new file 

```ruby
class Kitchen
end
```

### 5. Add a method to the kitchen so a order can be sent

```ruby
def order(dish)
  p "KITCHEN: Order received for #{dish.name}"
end
```

### 6. Let the waiter know about the kitchen

- In the `pizzeria.rb` file add a require for the file containing the kitchen
- Create a new instance of the `Kitchen` class and assign it to a variable

```ruby
kitchen = Kitchen.new
```

- Add the option to `Waiter` to receive a kitchen in its initializer method. Assign this argument to a instance variable

```ruby
  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
  end
```

- Add the variable kitchen to the initialization of the `Waiter` class.

```ruby
w = Waiter.new(menu, kitchen)
```

### 7. Let the kitchen know about the order

- In the `order_food` method of the Waiter class add a call to the order method of the Kitchen

```ruby
  def order_food(choice)
		dish = @menu.contents[ choice ]
    @kitchen.order(dish)
	end
```

### 8. test your program

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```
"Good day. Welcome to our lovely restaurant"
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Choose 1
- Should display: 

```
"0. Margherita"
"1. Napoletana"
"2. Peperoni"
```

- Choose 2
- Should display

```
"KITCHEN: Order received for Peperoni"
```

### 9. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'choices'`



## [05] As a cook. I would like to know which ingredients I have to use and which amounts. So that the dishes taste nice

**Tasks:**

1. create a class for Ingredient
2. ingredients can have a name and amount
3. add constants for the ingredient names
4. When creating a dish, add ingredients
5. print a list of ingredients and their amount
6. let the waiter know about the kitchen
7. let the kitchen know about the order
8. test your progress
9. save your progress


### 1. Create a class for Ingredient

- Create a file `ingredient.rb`
- Create a class in this new file
 
### 2. Add a initializer to the ingredient class that can take a name and amount

```ruby
def initialize(name, amount)
  @name = name
  @amount = amount
end
```

### 3. Add constants for the pizza ingredient names

```ruby
class Ingredient

	TOMATO = "Tomato"
	DOUGH = "Dough"
	MOZZARELLA = "Mozzarella"
	ANCHOVIES = "Anchovies"
	PEPERONI = "Peperoni"
	
	def initialize(name, amount)
		@name = name
		@amount = amount
	end
	
end	
```	

Constants are used to prevent misspelling.
	

### 4. When creating a dish, add ingredients

- Add a ingredients list to the initializer of the Dish class

```ruby
def initialize(name, ingredients)
  @name = name
  @ingredients = ingredients
end
```

- In the menu, where the dishes are initialized, also add ingredients

```ruby
@menu << Dish.new("Margherita", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.2)
  ])
@menu << Dish.new("Napoletana", [
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.2),
    Ingredient.new(Ingredient::ANCHOVIES, 0.05)
  ])
@menu << Dish.new("Peperoni",[
    Ingredient.new(Ingredient::TOMATO, 3),
    Ingredient.new(Ingredient::DOUGH, 0.25),
    Ingredient.new(Ingredient::MOZZARELLA, 0.2),
    Ingredient.new(Ingredient::PEPERONI, 0.1)
  ])
```

### 5. Get the ingredients and its name from a Dish and print it in the kitchen 

- Create a method on the Dish class to return the value in the ingredients instance variable

```ruby
def ingredients
  @ingredients
end
```

- Create a method for the Ingredient class to return the value in the name instance variable and a method for the amount variable

```ruby
def name
  @name
end

def amount
  @amount
end
```  

- Improve the order method of the Kitchen class to print a list of ingredients for the dish

```ruby
def order(dish)
  p "KITCHEN: Order received for #{dish.name}"
  p "Im gonna need some:"

  dish.ingredients.each do |ingredient|
    p "#{ingredient.amount} - #{ingredient.name}"
  end
end
```

### 6. test your program

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```bash
"Good day. Welcome to our lovely restaurant"
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Choose 1
- Should display: 

```bash
"0. Margherita"
"1. Napoletana"
"2. Peperoni"
```

- Choose 1
- Should display

```bash
"KITCHEN: Order received for Napoletana"
"Im gonna need some:"
"3 - Tomato"
"0.25 - Dough"
"0.2 - Mozzarella"
"0.05 - Anchovies"
```

### 7. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'choices'`


## [06] As a waiter. I would like to know if a dish can still be ordered. So that I don't try sell unavailable dishes.

Add a storage and check before a order can be placed. When a dish is prepared, update the stock.

### 1. Create a class for Storage

- Create a file `storage.rb`
- Create a class in this new file

### 2. Add a initialize method to the Storage class that creates stock for a bunch of ingredients

```ruby
def initialize
  @items = [
    Ingredient.new(Ingredient::TOMATO, 8),
    Ingredient.new(Ingredient::DOUGH, 2),
    Ingredient.new(Ingredient::MOZZARELLA, 1),
    Ingredient.new(Ingredient::PEPERONI, 0.3)		
  ]
end
```

### 3. Add a method to decrease the amount of a ingredient to the Ingredient class

```ruby
  def use(amount)
		@amount -= amount
	end
```

### 4. Add a fetch method to the Storage class

- Create a fetch method that takes a list of ingredients as a argument and checks them out of the storage

```ruby
def fetch(ingredients)
  ingredients.each do |ingredient|
    item = @items.detect{|item| item.name == ingredient.name}
    item.use ingredient.amount
  end
end
```

### 5. Let the kitchen create a instance of the storage

- require the file which is declaring the storage class in kitchen

```ruby
require './storage'

class Kitchen
```

- add a initializer method to the kitchen and create a instance of storage

```ruby
  def initialize
    @storage = Storage.new
  end
```

### 5. Call the fetch method when a order is placed. Add it to the bottom of the order method of Kitchen

```ruby
@storage.fetch(dish.ingredients)
```

### 6. Add a check to the `order_food` method of the `Waiter` class and wrap the order in it.

```ruby
def order_food(choice)
		dish = @menu.contents[ choice ]
    if @kitchen.order(dish)
      p "Dish is on its way"
    else
      p "Sorry this dish is not available"
    end
	end
```

### 7. Change the fetch method of Storage to return a boolean if a dish is not available

The kitchen has the order method which tries to fetch items from the storage. Make it return false if there is no item in the storage

```ruby
def fetch(ingredients)
  ingredients.each do |ingredient|
    item = @items.detect{|item| item.name == ingredient.name}
    if item
      item.use ingredient.amount
    else
      return false
    end
  end
end
```

### 8. test your program

- Open the terminal
- Run the pizzeria class with ruby `ruby pizzeria.rb`
- Should display: 

```
"Good day. Welcome to our lovely restaurant"
"How can I be of service?"
"1. Would you like to order a pizza?"
"2. Would you like to leave?"
```

- Choose 1
- Should display: 

```
"0. Margherita"
"1. Napoletana"
"2. Peperoni"
```

- Choose 1
- Should display

```
"KITCHEN: Order received for Napoletana"
"Im gonna need some:"
"3 - Tomato"
"0.25 - Dough"
"0.2 - Mozzarella"
"0.05 - Anchovies"
"Sorry this dish is not available"
```

### 9. Save your progress

- Open the terminal
- Add all the files in your project to git `git add .`
- Commit the files to your local git `git commit -m 'choices'`


## [07] As a waiter. I would like to keep track of the items that a customer orders. So that I can present the bill afterwards.

### 1. Add a class for check
### 2. Add a initializer method which creates a empty array

 - create a instance variable in the initializer and assign a empty array to it

### 3. Create a method to add items to the check

```ruby
	def add(item)
		@items << item
	end
```	

### 4. Add a item to the check if it can be ordered

- require the file containing the check class in the waiter class file
- add a instance variable to the waiter initialize method

```ruby
@check = Check.new
```

- call the add method on @check if food can be ordered

```ruby
@check.add(dish)
```

### 5. Test && Save

## [08] As a guest. I would like to keep ordering food until there is no stock left or I have had enough. So that I have a good time

### 1. add a method to waiter to check if he is still serving a guest

- add a boolean to the waiter class as a instance variable `@serving`. Add it to the initializer and give it the value of `true`
- create a method for waiter which returns the value of the boolean

```ruby
def serving?
  return @serving
end
```

### 2. create a loop for waiter in the pizzeria

```ruby
while(w.serving?) do
  w.serve_guest
end
```

### 3. stop serving if a guest wants to leave

- in the method `take_order` of Waiter. Set @serving to false if a guest wants to leave.
 

### 4. Test && Save

## [09] As a waiter. I would like to present the bill after a guest is done. So that I can get payed.

### 1. Add a price field to the dish

- add a price to the arguments of the initializer of the dish class
- assign the price to a instance variable
- create a method to return the value of the instance variable

### 2. Add a price to all the dishes on the menu

- in the menu class initializer, add a price for each of the three dishes

### 3. Add a method to check to calculate the sum of all dishes

- create a method on the check class that loops over all items
- create a local variable sum for this method
- for each dish in the item loop, add the price to the sum
- return the value of sum
- let the waiter call this method and tell the value after saying "Thank you for your visit"

### 4. Test && Save

## [10] As a waiter. I would like the guest not being able to order a non existing dish

## [11] As a waiter. I would like to greet my guests in a way appropriate to the time of day. So that I look distinguished

## [12] As a guest. I would like to be able to order drinks asw ell

## [13] As a guest. I would like to also order pastas

## [14] As a waiter. I would like to save all payed bills to the disk.