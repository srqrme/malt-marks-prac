class User < ApplicationRecord

    has_many :marks
    has_many :whiskeys, through: :marks
end
