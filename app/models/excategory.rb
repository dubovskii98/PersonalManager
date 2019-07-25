class Excategory < ApplicationRecord
  has_many :expenses
  validates :name,length: { minimum: 2,maximum: 40}, presence: true
  validates :desc,length: {maximum: 150}, presence: true
end
