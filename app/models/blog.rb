class Blog < ApplicationRecord
    validates :topic, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
    has_many :articles
end
