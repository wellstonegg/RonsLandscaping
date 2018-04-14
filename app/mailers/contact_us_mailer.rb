class ContactUsMailer < ApplicationMailer
  def contact_form_email
    @contact = params[:contact]
    email_with_name = %("#{@contact.name}" <#{@contact.email}>)
    mail(to: 'sushilthe@gmail.com', subject: @contact.subject, from: email_with_name)
  end
end
