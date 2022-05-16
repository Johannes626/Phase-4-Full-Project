class User < ApplicationRecord
    has_many :saved_movies
    has_many :movies, through: :saved_movies

    has_secure_password
end
