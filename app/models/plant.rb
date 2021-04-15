class Plant < ActiveRecord::Base
    belongs_to :user
    belongs_to :garden

    validates :name, :garden_id, presence: true

end