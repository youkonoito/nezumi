class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :show]
  before_action :correct_user, only: [:destroy]
  
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "画像が投稿されました!"
      redirect_to root_url
    else
      #@feed_items = []
      render 'static_pages/home'
    end
  end
  
  def destroy
    @micropost.destroy
    flash[:success] = "作品を削除しました。"
    redirect_to request.referrer || root_url
  end
  
  def show
    @micropost = Micropost.find(params[:id])
  end
  
  private
    
    def micropost_params
      params.require(:micropost).permit(:image, :comment)
    end
    
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
