class Restaurant

    attr_accessor :name, :star_rating
    attr_reader :owner

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
        
    def self.all
        @@all
    end

end