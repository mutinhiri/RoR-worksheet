class Article < ApplicationRecord
    validates :title, presence: true
    validates :description
end