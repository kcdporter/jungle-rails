class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'

  def order_total(order)
    order.map {humanized_money_with_symbol line_item.total_price}
  end
end
