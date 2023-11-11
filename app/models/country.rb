class Country < ApplicationRecord
  validates :country_id, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
