class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :fecha, presence: true
    validates :body, presence: true
end
