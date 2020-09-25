class MenuItem

    attr_accessor :price, :restaurant, :recipe

    @@all = []

    def initialize(restaurant, recipe, price)
        @price = price.to_f
        @restaurant = restaurant
        @recipe = recipe
        @@all << self
    end

    def self.all
        @@all
    end

end