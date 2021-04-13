class User
    has_many :plants
    has_many :gardens, through :plants

    attr_accessor :name, :username, :plants

    @@all = []

    def initialize(:name, :username, :password)
        @name = name
        @username = username
        @password = password
        @@all << self
    end

    def self.all
        @all
    end


end