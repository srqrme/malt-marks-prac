class Whiskey < ApplicationRecord

    has_many :marks
    has_many :users, through: :marks
    
end
