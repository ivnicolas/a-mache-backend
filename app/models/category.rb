class Category < ApplicationRecord
    has_many :subcategories
    has_many :posts, through: :subcategories
end
