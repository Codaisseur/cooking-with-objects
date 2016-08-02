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

## As a guest. I want to be greeted by the waiter when I enter the pizerria. So that I feel like I am welcome.

Tasks:
1. create a waiter
2. add a method to the waiter to greet a guest
3. create a pizzeria
4. require the waiter in the pizzeria
5. make a instance of the waiter in the pizzeria
6. call the greeting method

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

A instance is when we create a object from a class. 

- Create a new instance of waiter and assign it to a variable `w = Waiter.new`

### 6. Call the greeting method

- Call a method on a object by placing it after a dot. Like `object.method`. So to call the greeting method on the object stored in `w` you can call `w.greet_guest`

## As a guest. I would like the waiter to help me. So that I can have a bite to eat

Tasks:

1. Create a method for the waiter to serve_guests. 
2. The serve_guests method should print a list of options for the guests
3. A guest should be able to choose from the options by their number. 
4. After a choice is made, the waiter can take action

## As a waiter. I would like to know the menu. So that I can help the guests

A menu is a combination of recipes. 

1. create a class for menu
2. add a initialize method to the menu to create a array of recipes
3. return the list of recipes
4. let the waiter print the list

## As a waiter. I would like to be able to order a item from the kitchen. So that the guests stop bothering me

Tell the kitchen what the guests would like
- 

#As a cook. I would like to know which ingredients I have to use and which amounts. So that the dishes taste nice

Enhance the menu. Add ingredients and their amount to recipes.
- 

## As a waiter. I would like to know if a dish can still be ordered. So that I don't try sell unavailable dishes.

Add a storage room and check before a order can be placed. When a dish is prepared, update the stock.

## As a guest. I would like to keep ordering food until there is no stock left or I have had enough. So that I have a good time

## As a waiter. I would like to keep track of the items that a customer orders. So that I can present the bill afterwards.

## As a waiter. I would like to present the bill after a guest is done. So that I can get payed.


------------
## As a waiter. I would like to greet my guests in a way appropriate to the time of day. So that I look distinguished

## As a guest. I would like to be able to order drinks aswell

## As a waiter. I would like to save all payed bills.

## As a guest. I would like to also order pastas





