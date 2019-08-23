class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    nickname = user.Nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def tweet_user_show
    @user = User.find(params[:id])
    @tweets = @user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
