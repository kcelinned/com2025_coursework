class ApplicationMailer < ActionMailer::Base
  #deafult properties
  default to: "info@bujo.com", from: 'info@bujo.com'
  layout 'mailer'
end
