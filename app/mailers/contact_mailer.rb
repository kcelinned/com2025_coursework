class ContactMailer < ApplicationMailer

  # method to send email with parameters needed
  def contact_email(email, name, telephone, message)
  @email = email
  @name = name
  @telephone = telephone
  @message = message

  mail cc: @email
end

end
