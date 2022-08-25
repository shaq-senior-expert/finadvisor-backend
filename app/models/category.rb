class Category < ApplicationRecord
  has_many :translations
  has_many :bills
  has_many :budgets
end
