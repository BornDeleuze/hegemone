class User < ActiveRecord::Base
    has_many :plants
    has_many :gardens, through: :plants

    validates :name, presence: true

end