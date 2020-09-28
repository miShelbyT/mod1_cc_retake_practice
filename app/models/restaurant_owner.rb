class RestaurantOwner

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age.to_i
        @@all << self
    end

    def restaurants
        Restaurant.all.filter { |rest| rest.owner == self }
    end

    def menu_items
        self.restaurants.map { |rest| rest.menu_items }
    end

    def self.average_age
        self.all.reduce(0) { |total, owner| total + owner.age }/self.count
    end

    def sell_restaurant(restaurant, buyer)
        self.restaurants.each do |rest|
            if rest == restaurant
                rest.owner = buyer
            end
        end
    end

    

    def self.all
        @@all
    end

end