class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["title", "content"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end
