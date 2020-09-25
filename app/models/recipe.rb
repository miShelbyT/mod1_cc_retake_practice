class Recipe

    attr_accessor :description
    attr_reader :name

    @@recipe = []

    def initialize(name, description)
        @name = name
        @description = description
        @@recipe << self
    end

    

end