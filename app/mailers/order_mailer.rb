class OrderMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  def order_email
    #this url needs to be http://localhost:3000/orders/:id
    @url  = 'http://localhost:3000/orders/:id'
    mail(to:@order.email subject: 'Thank you for your order!')
  end
end
