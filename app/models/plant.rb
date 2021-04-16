class Plant < ActiveRecord::Base
    belongs_to :user
    belongs_to :garden
    validates :name, :garden_name, presence: true

end