class RestaurantOwner

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age.to_i
    end

    def self.all
        @@all
    end

end