class Cart < ApplicationRecord
  has_many :users
  has_many :orders
  has_many :wines, through: :orders
end
