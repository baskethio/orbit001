class User < ApplicationRecord
    validates :name, presence: true, length: {minimum:3, maximum:60}
    validates :email, presence: true, length: {minimum:3, maximum:255}
end
