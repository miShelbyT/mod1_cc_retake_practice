class Restaurant

    attr_accessor :name, :star_rating, :owner

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating.to_i
        @@all << self
    end

    def menu_items
        MenuItem.all.filter { |item| item.restaurant == self }
    end

    def recipes
        self.menu_items.map { |item| item.recipe }
    end

    def has_dish?(recipe)
        self.recipes.include?(recipe)
    end

    # def self.highest_rated
    #     self.star_rating.max
    # end
        
    def self.all
        @@all
    end

end