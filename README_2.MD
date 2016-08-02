#COOKBOOK
Lets do some more cooking!
[img](http://s2.quickmeme.com/img/3c/3ca2955b995c2b02bf1d821a8cf7066c5689eb3e2a4ebc7a80bfdf501290669c.jpg)

We will learn about cooking all the things. Also Object Oriented Programming.

What is a Object?

A object is a abstract version of a thing like in the real world. Like a recipe. 
A recipe can be a object. It can be inside a cookbook which is another object.

> A cookbook (sometimes cookery book in Commonwealth English[1] or cook book) is a kitchen reference publication that typically contains a collection of recipes.

Let start by making the cookbook object. 

## 1.0 It all starts with a class

A object in ruby needs a class. A class is like the blueprint for a object. You create a class in its own file.
Lets make the cookbook class first.

1. Create a new directory for this exercise
2. Go to the directory (cd)
3. Create a file in the new directory (touch cookbook.rb)
4. Open the directory and its files (atom .)
5. Add the following content to cookbook.rb

```ruby
class Cookbook
end
```

a. A classname always starts with uppercase. 
b. A filename is always lowercase
c. Ruby files always end in `.rb`
d. Everything after the line of `class Cookbook` and before `end` is the content of the class.

## 1.1 Our first objects

This class in itself is not so use full yet, but let's see how we do something with it.
Lets create a small script to create a cookbook object.

1. Create a file (touch run.rb)
2. require the cookbook file `require_relative 'cookbook.rb'`
3. Create a object and print it `p Cookbook.new`
4. Run the script

```
$ ruby run.rb
```

a. We can load other files into our file by using the `require_relative` method of ruby. This loads a ruby file relative to our execution path 
b. We add the `p` in front of the object creation to have something on the screen.
c. Creating a new object was done with the `.new` method. This is called a *constructor*.

## 1.2 Lets add a recipe

It would be nice for our cookbook to contain some recipes. We need to create a class again.

1. Create a file `recipe.rb`
2. Create a class for `Recipe`

```
class Recipe
end
```

3. Add a name to the recipe. We will do this by supplying it in the `.new` method call.
This way we can do `Recipe.new "Tomato soup"` If you want to use arguments for the .new method, you have to define your own constructor
Overriding a constructor is done by defining a `initialize` method
Add the following definition of initialize inside the Recipe class

TODO: This could be a lot easier with a setter

```
  def initialize name
    p "Created a recipe object for #{name}"
  end
```

4. Require the recipe in the cookbook. Add `require_relative 'recipe.rb'` on the first line of `cookbook.rb`
5. Create a method to add a recipe to the cookbook. Inside the cookbook class add 
  
```
  def add_recipe
    Recipe.new 'Tomato Soup'
  end
```

6. Change the run script to call this method

```
cookie = Cookbook.new
cookie.add_recipe
```

7. Run the run script

```
$ ruby run.rb                                                                                                                                                                                           [23:13:00]
"Created a recipe object for Tomato Soup"
```  

8. Relax a bit

a. We created 2 objects now. The recipe and the cookbook.
b. We can create object by calling the constructor `.new`
c. A constructor method is named `initialize`

## 1.3 Storing the recipes
Lets store the recipe in the cookbook by using a array. A array is also a class that is used to create objects.
The array class and its use can be found online http://ruby-doc.org/core-2.2.0/Array.html

1. Inside the cookbook class. Lets create a method that makes a bunch of recipes and stores them in a array. 

```
def bunch_of_recipes
  recipes = Array.new
  recipes << add_recipe
  recipes << add_recipe
  recipes << add_recipe
  recipes << add_recipe
  p recipes
end
```

a. We can create a array object by calling `.new` on the array class. We dont need to require array, because ruby does that for us.
b. We can add objects to the array with the `<<` method. 
c. The add recipe method returns a object. Because we call Recipe.new in it. Ruby automatically returns the last line of a function
d. The last line of our bunch method prints the contents of the array. It is a bunch of objects.

## 1.4 Accessing the recipes
As you saw, you can store objects inside other objects. But where are they stored?

1. Lets make a method to print a list of the recipes. Lets call the method `to_s` (like ruby conventions)
Define this method inside the cookbook class.

```ruby
  def to_s
    p recipes
  end
```
2. Call this method from our run.rb script. Change `cookie.bunch_of_recipes` to `cookie.to_s`

```bash
$ ruby run.rb                                                                                                                                                                                           [23:49:27]
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
/Users/ben/src/cookbook/cookbook.rb:13:in `to_s': undefined local variable or method `recipes' for #<Cookbook:0x007f9112a2ded8> (NameError)
	from run.rb:5:in `<main>'
```

You should get a error like similar to this one.
It says:

- on line 14 of file `/Users/ben/src/cookbook/cookbook.rb` 
- when running the `to_s` method
- undefined local variable or method `recipes` was encountered

> But wait?!

There is a variable named `recipes` right? And we add recipes to it by calling. So what is happening here?
 
> As you maybe saw yesterday already, a variable is private to a method. This means it is only available as long as the method is executed

3. Lets solve this private variable business. We do this by creating a instance variable. A instance variable can be accessed from any other method inside a class.
3a. Change each occurrence of `recipes` in the `create_a_bunch_of_recipes` method of cookbook to `@recipes` 
3b. Change the occurrence of `recipes` in the `to_s` of cookbook to `@recipes`
4. Run the script again

```
$ ruby run.rb                                                                                                                                                                                           [23:52:27]
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
"Created a recipe object for Tomato Soup"
[#<Recipe:0x007fa3b4136780>, #<Recipe:0x007fa3b4136640>, #<Recipe:0x007fa3b4136550>, #<Recipe:0x007fa3b4136460>]
```

a. By using instance variables, you can have variables that keep their value as long as the object exists.

##1.5 Beyond Tomato soup

It would be nice if our cookbook contains more then just tomato soup.
Lets adjust the add recipe method slightly, so it takes a recipe name as a argument.

1. Add a recipe_name argument to the add_recipe method

```
def add_recipe recipe_name
```

2. Use the value of recipe name as the name of the recipe (instead of tomato soup)
3. When calling the method add_recipe, supply a string for the recipe_name argument:

```
    @recipes << add_recipe "Chicken soup"
    @recipes << add_recipe "Tomato soup"
    @recipes << add_recipe "Spanish omelet"
    @recipes << add_recipe "Spanish sardines on toast"
    @recipes << add_recipe "Spanish chicken"
    @recipes << add_recipe "Mediterranean sardine salad"
```

##2.0 Search our recipes
It would be nice if we can search in our collection of recipes. We can do so by adding a search method to the cookbook.

make a search method
get input from commandline
loop over all recipes
run
name is missing
add name to recipe class initializer
run
add accessor method
run 


##2.1 Narrow down the search
It would be nice if we can get the actual recipe objects

##2.3 Print the matched recipe

##3.0 Add ingredients
A recipe can be a more complicated object

##3.1 Add preperation to recipe

##3.2 Search in ingredients

##4.0 Save recipe to file 















