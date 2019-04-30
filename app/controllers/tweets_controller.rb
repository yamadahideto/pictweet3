class TweetsController < ApplicationController

  before_action :move_to_index, except: :index
  def index
    @tweet = Tweet.includes(:user).page(params[:page]).per(3).order("id DESC")
  end

  def new
  end

  def create
    Tweet.create(image:tweet_params[:image],text:tweet_params[:text],user_id: current_user.id)
  end

  def destroy
    tweet = Tweetfind
  end


  private
  def tweet_params
    params.permit(:image, :text)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
  end
end

end
