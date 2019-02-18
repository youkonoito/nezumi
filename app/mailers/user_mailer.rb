class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "ねずみのお家のアカウントの有効化"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "ねずみのお家パスワードの再設定"
  end
end
