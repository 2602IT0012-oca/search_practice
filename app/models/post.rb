class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :search, ->(keyword) {
    if keyword.present?
      where('title LIKE ? OR content LIKE ?', "%#{keyword}%", "%#{keyword}%")
    else
      all 
    end
  }
end
