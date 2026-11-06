class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    scope :seardch, ->(keyword) {
        if keyword.present?
            where('name LIKE ?', "%#{keyword}%")
        else
            all
        end
    }
end
