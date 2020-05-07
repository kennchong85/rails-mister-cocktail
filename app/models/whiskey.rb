class Whiskey < ApplicationRecord
  belongs_to :country
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
end
