As a <specific user>
I want < an improvement >
So that I have < lovely benefits >

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

```
class Waiter
end
```

### 2. Add a method to the waiter to greet a guest

- add a method greet_guest
- the method should print a greeting

```
def greet_guest
	p "Good day. What can I do for you?!"
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
- Should display: `"Good day. What can I do for you?"`

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
def take_order(choice)

end
```

- call this method instead of assigning the result of gets to a variable

```ruby
take_order(gets.chomp.to_i)
```

- if the choice is 1 or 2 or none of these, give appropriate response. To easily do this we can use a switch. A switch is (TODO:)

```
case choice
```


## [03] As a waiter. I would like to know the menu. So that I can help the guests

A menu is a combination of recipes. 

**Tasks:**

1. create a class for menu
2. add a initialize method to the menu to create a array of recipes
3. return the list of recipes
4. let the waiter print the list

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





