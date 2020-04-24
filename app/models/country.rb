class Country < ApplicationRecord
  has_many :wines
  has_many :beers

  validates :name, presence: true, uniqueness: true
end
