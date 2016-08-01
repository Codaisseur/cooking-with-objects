require './waiter'
require './menu'
require './kitchen'
require './tab'

menu = Menu.new
kitchen = Kitchen.new(menu)
tab = Tab.new

w = Waiter.new(menu, kitchen, tab)

w.greet_guest

while(w.serving?) do 
	p "Serving: #{w.serving?}"
	w.inquire_guest
	w.handle_input(gets.chomp.to_i)
end
