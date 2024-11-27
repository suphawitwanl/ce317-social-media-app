class Post < ApplicationRecord
  belongs_to :user
  validates :headline, presence: true
  validates :content, presence: true
end
