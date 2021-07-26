class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_admin_mail
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many:articles


       def send_admin_mail
              UserMailer.send_admin_mail.deliver_now
       end
end
