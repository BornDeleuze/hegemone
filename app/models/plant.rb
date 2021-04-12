class Plant

attr_accessor :name, :latin_name, :user_id, :garden_id

@@all = []

    def initialize(name, username, password)
        @name = name
        @username = username
        @password = password
        @@all << self
    end


end