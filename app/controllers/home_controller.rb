class HomeController < ApplicationController
  def home
  end

  def contact
  end


  # POST method to for contact form
  def request_contact

      name = params[:name]
      email = params[:email]
      telephone = params[:telephone]
      message = params[:message]

      # shows error alert if email is blank
      if email.blank?
        flash[:alert] = I18n.t('home.request_contact.no_email')
      else
        ContactMailer.contact_email(email,name,telephone,message).deliver_now
        flash[:notice] = I18n.t('home.request_contact.email_sent')
      end

      #redirect back to home page
        redirect_to root_path
      end

end
