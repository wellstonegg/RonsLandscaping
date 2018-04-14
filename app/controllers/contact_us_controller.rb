class ContactUsController < ApplicationController
  def create
  #   Send Message
    render 'send_message'
  end

  private

  def contact_us_params
    params.require(:contact_us).permit(:name, :phone, :email, :subject, :message)
  end
end
