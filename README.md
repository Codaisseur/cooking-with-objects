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
- initialize a new git repository

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

### 2. Add a method to the waiter to greet a guest

- add a method greet_guest
- the method should print a greeting

```ruby
def greet_guest
	p "Good day. Welcome to our lovely restaurant"
end
```

### 3. Create a pizzeria

- create a file `pizzeria.rb`

### 4. Require the waiter in the pizzeria

- at the top of `pizzeria.rb` add `require './waiter'` to include the file.

### 5. Make a instance of the waiter in the pizzeria

A instance is when we create a object from a class. You can create a object by calling the constructor method. The constructor method is called `new` and by default takes no arguments 

- Create a new instance of waiter and assign it to a variable `w = Waiter.new`

### 6. Call the greeting method

- Call a method on a object by placing it after a dot. Like `object.method`. So to call the greeting method on the object stored in `w` you can call `w.greet_guest`

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

- call this method instead of assigning the result of gets to a variable

```ruby
take_order(gets.chomp.to_i)
```

- if the choice is 1 or 2 or none of these, give appropriate response. To easily do this we can use a case statement. Add the following content to the take_order function.

```ruby
case order_number
  when 1
    "Let me get the menu"
  when 2
    "Thank you for your visit"
  else
    "I really don't understand"
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
- Should display: `"Good day. Welcome to our lovely restaurant"`
- "How can I be of service?"
- "1. Would you like to order a pizza?"
- "2. Would you like to leave?"
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

- To create a dish with a name, you can use the initialize method again. Add a initialize method (constructor) to the Dish class that takes a dish_name as a argument.

```ruby
def initialize(name)
end
```

- Assign the argument of the constructor to a instance variable @name

```ruby
def initialize(name)
  @name = name
end
```

A instance variable is available to all methods of a class instance (object)

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
 
```
def initialize(menu)
  @menu = menu  
end
```

- Change the call to the constructor of Waiter in Pizzeria to receive a menu. 

```
w = Waiter.new(menu)
```


###7. let the waiter tell guests the contents of the menu

- define a method in the Menu class to return the value of the instance variable.

```ruby
def contents
  @menu
end
```

 

- create a list_menu method in the Waiter class

```
def list_menu
  @menu.contents.each do |recipe|
    p "#{recipe}"
  end
end
```

###8. test your progress

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
"#<Dish:0x007ff25b058048>"
"#<Dish:0x007ff25b058160>"
"#<Dish:0x007ff25b058ae8>"
```

###9. Improve the display of dishes

- add a method to dish to return its name

```
def name
  @name
end
```

- In the loop printing the dishes, call the `name` method to display the name

```
  def list_menu
		@menu.contents.each do |recipe|
			p "#{recipe.name}"
		end
  end
```

###10. test your progress

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

Tell the kitchen what the guests would like
- 

## [05] As a cook. I would like to know which ingredients I have to use and which amounts. So that the dishes taste nice

Enhance the menu. Add ingredients and their amount to recipes.
- 

## [06] As a waiter. I would like to know if a dish can still be ordered. So that I don't try sell unavailable dishes.

Add a storage room and check before a order can be placed. When a dish is prepared, update the stock.

## [07] As a guest. I would like to keep ordering food until there is no stock left or I have had enough. So that I have a good time

## [08] As a waiter. I would like to keep track of the items that a customer orders. So that I can present the bill afterwards.

## [09] As a waiter. I would like to present the bill after a guest is done. So that I can get payed.


------------
## [10] As a waiter. I would like to greet my guests in a way appropriate to the time of day. So that I look distinguished

## [11] As a guest. I would like to be able to order drinks aswell

## [12] As a waiter. I would like to save all payed bills.

## [13] As a guest. I would like to also order pastas





