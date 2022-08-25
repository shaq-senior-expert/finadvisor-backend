class User < ApplicationRecord
  has_many :transactions
  has_many :bills
  has_many :budgets

  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  
  def total_spend
    Transaction.where(user_id: self.id, deposit: false).group_by_month(:date).sum(:amount)
  end

  def total_income
    Transaction.where(user_id: self.id, deposit: true).group_by_month(:date).sum(:amount)
  end
end
