class ContactUsController < ApplicationController
  def create
    @success = false
    if verify_recaptcha
      #   Send Message
      @success = true
    end
    render 'send_message'
  end

  private

  def contact_us_params
    params.require(:contact_us).permit(:name, :phone, :email, :subject, :message)
  end
end
