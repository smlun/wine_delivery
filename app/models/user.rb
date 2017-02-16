class User < ApplicationRecord
  has_one :cart

  after_create :create_cart_for_user



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_cart_for_user
    Cart.create(user: self)
  end
end
