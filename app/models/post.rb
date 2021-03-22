class Post < ApplicationRecord
    has_many :likes
    belongs_to :category
end
