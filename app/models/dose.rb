class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :unit, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
