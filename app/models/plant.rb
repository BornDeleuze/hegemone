class Plant < ActiveRecord::Base
    belongs_to :user
    validates :name, :garden_name, presence: true

end