class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :wine
end