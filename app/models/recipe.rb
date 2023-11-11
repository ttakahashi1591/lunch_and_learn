class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :url, presence: true
  validates :country, presence: true
  validates :image, presence: true
end
