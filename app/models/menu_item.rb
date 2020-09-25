class MenuItem

    attr_accessor :price

    def initialize(restaurant, recipe, price)
        @price = price.to_f
        @restaurant = Restaurant
        @recipe = Recipe
    end

    def self.all
        @@all
    end

end