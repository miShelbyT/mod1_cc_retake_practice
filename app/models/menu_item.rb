class MenuItem

    attr_accessor :price
    attr_reader :restaurant, :recipe

    @@all = []

    def initialize(restaurant, recipe, price)
        @price = price.to_f
        @restaurant = restaurant
        @recipe = recipe
        @@all << self
    end

    def owner
        self.restaurant.owner
    end

    def self.all
        @@all
    end

end