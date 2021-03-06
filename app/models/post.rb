class Post < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 11}
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
end
