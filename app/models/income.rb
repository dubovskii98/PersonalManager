class Income < ApplicationRecord
  belongs_to :incategory
  validates :price, numericality: {greater_than: 0 }, presence: true
  validates :name,length: { minimum: 2,maximum: 40}, presence: true
  validates :desc,length: {maximum: 150}, presence: true
  validates :incategory_id, presence: true
  accepts_nested_attributes_for :incategory
end
