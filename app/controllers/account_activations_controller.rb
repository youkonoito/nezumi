class AccountActivationsController < ApplicationController
  
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activated
      log_in user
      flash[:success] = "アカウントが有効になりました!"
      redirect_to user
    else
      flash[:danger] = "有効化リンクは無効でした。"
      redirect_to root_url
    end
  end
end
