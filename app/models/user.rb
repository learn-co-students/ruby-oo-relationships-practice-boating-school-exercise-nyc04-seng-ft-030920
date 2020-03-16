class User
    def initialize(name)
        @name = name
        self.class.all << self
    end
end