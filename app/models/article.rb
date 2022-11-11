class Article < ApplicationRecord
    validates :tittle, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}

    
    
end
