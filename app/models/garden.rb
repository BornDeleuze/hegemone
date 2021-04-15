class Garden < ActiveRecord::Base
    has_many :plants
    has_many :users, through: :plants

    validates :name, presence: true

end