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
              # respond_to do |format|
       #        if @user.save
       #           # Tell the UserMailer to send a welcome email after save
       #           UserMailer.with(user: @user).welcome_email.deliver_later
       #           format.html { redirect_to(@user, notice: 'User was successfully created.') }
       #           format.json { render json: @user, status: :created, location: @user }
       #          else
       #            format.html { render action: 'new' }
       #            format.json { render json: @user.errors, status: :unprocessable_entity }
       #        end
       # end
end
