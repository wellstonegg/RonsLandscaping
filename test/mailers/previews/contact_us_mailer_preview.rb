# Preview all emails at http://localhost:3000/rails/mailers/contact_us_mailer
class ContactUsMailerPreview < ActionMailer::Preview
  def contact_form_email
    contact_us_params = OpenStruct.new(name: 'Test User', email: 'test@test.com', phone: '9806543210',
                         subject: 'Welcome to Rons Landscaping', message: 'Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Donec euismod eros nec neque tempor, vitae placerat tortor ullamcorper. Quisque eget nibh vel leo
aliquet ultrices. Maecenas leo ligula, porttitor sit amet libero vitae, congue pretium erat. Vestibulum ante ipsum
primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus non maximus mauris, eget auctor augue.
Donec vestibulum egestas ex, id elementum enim pretium at. Etiam vulputate congue diam, ac molestie ligula semper ac.
Maecenas convallis lacus nec nibh accumsan commodo. In sagittis lorem nunc.')
    ContactUsMailer.with(contact: contact_us_params).contact_form_email
  end
end
