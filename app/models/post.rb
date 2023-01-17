class Post < ApplicationRecord
  belongs_to :category
  belongs_to :author
  has_many :comments
end
