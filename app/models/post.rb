class Post < ApplicationRecord
  belongs_to :subcategory
  belongs_to :category
end
