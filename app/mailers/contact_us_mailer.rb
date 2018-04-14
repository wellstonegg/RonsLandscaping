class ContactUsMailer < ApplicationMailer
  def contact_form_email
    @contact = OpenStruct.new(JSON.parse(params[:contact]))
    email_with_name = %("#{@contact.name}" <#{@contact.email}>)
    mail(to: EMAIL_TO, subject: @contact.subject, from: email_with_name)
  end
end
