class User
  
    attr_accessor :name, :username, :plants

@@all = []

    def initialize(name, username, password)
        @name = name
        @username = username
        @password = password
        @@all << self
    end


end