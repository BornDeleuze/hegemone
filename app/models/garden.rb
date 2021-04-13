class Garden
    has_many :plants
    has_many :users, through :plants
    attr_accessor :name, :type, :plant_id

    def initialize (:name, :type, :plant_id)
        @name = name
        @type = type
        @plant_id = plant_id
    end

    def self.all
        @all
    end

end