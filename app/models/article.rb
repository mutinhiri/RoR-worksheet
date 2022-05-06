class Article < ApplicationRecord
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article
    validates :title, presence: true
    validates :description, presence: true
    validates :user_id, presence: true 
end