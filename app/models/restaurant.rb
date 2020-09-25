class Restaurant

    attr_accessor :name, :star_rating, :restaurant_owner

    @@all = []

    def initialize(restaurant_owner, name, star_rating)
        @restaurant_owner = restaurant_owner
        @name = name
        @star_rating = star_rating.to_i
        @@all << self
    end
        
    def self.all
        @@all
    end

end