class User < ApplicationRecord
    has_many :articles
    before_save { }
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end