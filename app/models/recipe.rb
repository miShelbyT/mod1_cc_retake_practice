class Recipe

    attr_accessor :description
    attr_reader :name

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def menu_items
        MenuItem.all.filter { |item| item.recipe == self }
    end

    def restaurants
        self.menu_items.map { |items| items.restaurant }
    end

    def average_price
        self.menu_items.reduce(0) { |sum, item| sum + item.price }.to_i / menu_items.count
    end

    def highest_price
        self.menu_items.max_by { |item| item.price }.price
    end

    def cheapest_restaurant
				mi = self.menu_items.min { |item| item.price }
				mi.restaurant
		end
		
		
    def self.inactive
		 inactive = []
		 	self.all.each do |recipe|
        inactive << recipe if recipe.menu_items == []  
      end
      inactive
	end

    def self.all
        @@all
    end

end