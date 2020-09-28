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

    def cheapest_restaurant
        self.menu_items.each.min_by { |item| item.restaurant }
    end

    def average_price
        self.menu_items.reduce(0) { |total, item| total + item.price }.to_i / menu_items.count
    end

    def highest_price
        self.menu_items.each.max { |item| item.price }
    end

    def cheapest_restaurant
        self.menu_items.each.min { |item| item.price }
    end

    # def self.inactive
    #     self.menu_items.all.select  { |recipe| mi.restaurant == nil }
    # end

    def self.all
        @@all
    end

end