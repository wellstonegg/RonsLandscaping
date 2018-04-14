class ContactUsController < ApplicationController
  def create
    @success = false
    if verify_recaptcha
      ContactUsMailer.with(contact: contact_us_params.to_json).contact_form_email.deliver_later
      @success = true
    end
    render 'send_message'
  end

  private

  def contact_us_params
    params.require(:contact_us).permit(:name, :phone, :email, :subject, :message)
  end
end
