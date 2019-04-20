class UserMailer < ApplicationMailer
  default from: "orders@jungle.ca"
  def order_receipt_email(order, line_items)
    @order = order
    @line_items = line_items
    mail(to: @order.email, subject: "Confirmation for order# #{order.id}")
  end
end
