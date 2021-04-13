class Plant
    belongs_to :user
    belongs_to :garden

    attr_accessor :name, :latin_name, :user_id, :garden_id, :notes

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