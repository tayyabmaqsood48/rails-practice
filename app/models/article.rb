class Article < ApplicationRecord
  # input validations.
  has_many :comments
  # Comment added after 2nd class
  # by adding above line we can retreive all comments against the article by @article.comments in an array
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
