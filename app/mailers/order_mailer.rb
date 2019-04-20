class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def order_email(order)
    @order = order
    @url  = 'http://localhost:3000/'
    mail(to:@order.email, subject: 'Thank you for your order!')
  end

  def order_total
    @order.map {humanized_money_with_symbol line_item.total_price}
  end
  helper_method :order_total
end
