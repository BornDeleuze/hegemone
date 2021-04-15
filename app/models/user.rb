class User < ActiveRecord::Base
    has_many :plants
    has_many :gardens, through: :plants
    has_secure_password
    validates :name, presence: true

end