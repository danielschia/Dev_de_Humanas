class User < ApplicationRecord
    has_many :posts
    has_many :pages
    has_many :likes
end
