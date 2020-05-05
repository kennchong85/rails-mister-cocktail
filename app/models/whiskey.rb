class Whiskey < ApplicationRecord
  belongs_to :country

  validates :name, presence: true, uniqueness: true
end
