class Mark < ApplicationRecord

    belongs_to :user
    belongs_to :whiskey

    validates :whiskey_id, presence: true

end
