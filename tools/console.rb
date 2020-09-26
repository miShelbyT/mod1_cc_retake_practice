# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end



diana = RestaurantOwner.new("Diana", 37)
jackie = RestaurantOwner.new("Jackie", 40)
mike = RestaurantOwner.new("Mike", 55)


ca_pizza_kitchen = Restaurant.new(mike, "California Pizza Kitchen", 3)
little_chef = Restaurant.new(diana, "Little Chef Little Cafe", 5)
bella_via = Restaurant.new(mike, "Bella Via", 4)
henrys_cafe = Restaurant.new(jackie, "Henrys Cafe", 4) 

cpk_salad = Recipe.new("Salad", "appetizer")
veggie_pizza = Recipe.new("Pizza", "entree")
meatlovers_pizza = Recipe.new("Pizza", "entree")
berry_smoothie = Recipe.new("Morning Smoothie", "breakfast")
cheese_empanada = Recipe.new("Empanada", "appetizer")
cheesy_burger = Recipe.new("Cheeseburger", "entree")


salad = MenuItem.new(ca_pizza_kitchen, cpk_salad, 6.50)
pizza = MenuItem.new(ca_pizza_kitchen, meatlovers_pizza, 9.75)
burger = MenuItem.new(ca_pizza_kitchen, cheesy_burger, 9.75)
pizza = MenuItem.new(bella_via, veggie_pizza, 9.75)
smoothie = MenuItem.new(little_chef, berry_smoothie, 6.25)
empanada = MenuItem.new(henrys_cafe, cheese_empanada, 3.00)









# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
