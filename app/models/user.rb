class User < ApplicationRecord
    validates :name, presence: true, length: {minimum:3, maximum:60}
    REGULAR_EXPR = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {minimum:3, maximum:255 }, format: {with: REGULAR_EXPR}

end
