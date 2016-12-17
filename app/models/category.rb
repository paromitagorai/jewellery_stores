class Category < ApplicationRecord
  has_many :products
  validates :name, presence: true
  validates :desc, presence: true
end
