class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "ねずみのお家のアカウントの有効化"
  end

  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
