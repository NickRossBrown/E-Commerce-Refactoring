class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :name, :presence => true
  validates :email, :presence => true
  validates :password_digest, :presence => true
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }
  validate :check_password_format

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end

  private

  def check_password_format
    regexps = {" must contain at least one lowercase letter" => /[a-z]+/, 
               " must contain at least one uppercase letter" => /[A-Z]+/, 
               " must contain at least one digit" => /\d+/, 
               " must contain at least one special character" => /[^A-Za-z0-9]+/}
    regexps.each do |rule, reg|
      errors.add(:password, rule) unless password.match(reg)
    end
  end

end
