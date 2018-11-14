class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail to: user.email # => mail object
  end
   def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
    # => [text|html].erb
  end
end
