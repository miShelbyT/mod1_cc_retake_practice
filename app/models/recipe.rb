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
        self.menu_items.map { |item| item.restaurant }
    end

    def self.all
        @@all
    end

end