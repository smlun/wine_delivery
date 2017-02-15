class Wine < ApplicationRecord
  has_many :orders
  has_many :cart, through: :orders
end
