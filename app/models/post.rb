class Post < ApplicationRecord
  belongs_to :category
  belongs_to :post
  has_many :comments
end
