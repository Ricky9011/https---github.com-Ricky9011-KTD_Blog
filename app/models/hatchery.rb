class Hatchery < ApplicationRecord
    has_many :blogs
    has_one :breeder 
end
