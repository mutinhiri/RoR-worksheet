class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :email
end