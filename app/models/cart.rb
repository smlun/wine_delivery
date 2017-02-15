class Cart < ApplicationRecord
  has_many :orders
  has_many :wines, through: :orders
end
