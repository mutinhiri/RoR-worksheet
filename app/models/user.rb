class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    VALID_EMAIL_REGEX
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end