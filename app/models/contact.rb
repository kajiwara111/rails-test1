class Contact < ApplicationRecord
    validates :name, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

    validates :content, presence: true, length: {in: 1..140} 
end
