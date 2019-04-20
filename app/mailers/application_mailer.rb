class ApplicationMailer < ActionMailer::Base
  default from: "orders@jungle.ca"
  layout 'mailer'
end