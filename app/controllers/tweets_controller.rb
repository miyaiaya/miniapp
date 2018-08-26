class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end


  private
  def tweet_params
    params.require(:tweet).permit(:text)
  end

end
