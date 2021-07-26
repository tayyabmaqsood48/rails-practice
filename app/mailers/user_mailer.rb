class UserMailer < ApplicationMailer
  default from: 'tayyabmaqsood48@gmail.com'
  def send_admin_mail
      mail(to: 'tayyab4721380@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
