class Contact < ApplicationRecord
    #nameカラムに対するバリデーション
    validates :name, presence: true

    #emailカラムに対するバリデーション
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

    #contentカラムに対するバリデーション
    validates :content, presence: true, length: {in: 1..140} 
end
