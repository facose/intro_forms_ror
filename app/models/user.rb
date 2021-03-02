class User < ApplicationRecord
    validates :email, presence: true, uniqueness: {message: "has already been taken."} 
    validates :name, presence: true
end
