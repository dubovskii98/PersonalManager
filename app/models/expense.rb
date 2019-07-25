class Expense < ApplicationRecord
  belongs_to :excategory
  validates :price, numericality: {greater_than: 0 }, presence: true
  validates :name,length: { minimum: 2,maximum: 40}, presence: true
  validates :desc,length: {maximum: 150}, presence: true
  validates :excategory_id, presence: true
  accepts_nested_attributes_for :excategory
end
