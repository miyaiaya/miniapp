class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("created_at DESC")
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



  private
  def tweet_params
    params.require(:tweet).permit(:text , :title)
  end

end
