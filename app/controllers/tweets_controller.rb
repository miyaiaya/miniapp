class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(title: tweet_params[:title], text: tweet_params[:text],user_id: current_user.id)
    redirect_to action: :index
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)if tweet.user_id == current_user.id
    redirect_to action: :index
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy if tweet.user_id == current_user.id
    redirect_to action: :index
  end



  private
  def tweet_params
    params.require(:tweet).permit(:text , :title)
  end

end
