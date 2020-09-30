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

    def self.most_expensive_item
        self.all.max_by { |item| item.price }
    end

    def self.all
        @@all
    end

end