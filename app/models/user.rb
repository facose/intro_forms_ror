class User < ApplicationRecord
    validates :email, uniqueness: {message: "Email has already been taken."} 
end
