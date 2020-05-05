class Country < ApplicationRecord
  has_many :wines
  has_many :beers
  has_many :whiskeys

  validates :name, presence: true, uniqueness: true
end
