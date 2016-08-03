require './waiter'
require './menu'
require './kitchen'

menu = Menu.new
kitchen = Kitchen.new
w = Waiter.new(menu, kitchen)
w.greet_guest

while(w.serving?) do
  w.serve_guest
end