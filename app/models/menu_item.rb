class MenuItem

    attr_accessor :price, :restaurant, :recipe

    def initialize(restaurant, recipe, price)
        @price = price.to_f
        @restaurant = restaurant
        @recipe = recipe
    end

    def self.all
        @@all
    end

end