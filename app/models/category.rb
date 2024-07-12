class Category < ApplicationRecord
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false },
                   length: { minimum: 6, maximum: 16 }
end
