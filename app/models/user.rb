class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["name", "email"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["posts"]
  end
end
