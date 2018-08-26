class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("created_at DESC")
  end

  def new
  end




end
