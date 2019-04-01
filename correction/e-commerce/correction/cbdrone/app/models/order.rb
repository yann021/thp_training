class Order < ApplicationRecord
    belongs_to :big_cart

  def order_admin_send
    OrderMailer.order_email_admin(self.user).deliver_now
  end

  def order_user_send
  	OrderMailer.order_email_user(self.user).deliver_now
  end

end
