class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates_presence_of :user_id
  # default_scope { order(date: :desc) }
end
