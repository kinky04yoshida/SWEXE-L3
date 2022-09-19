class TweetsController < ApplicationController
  require 'date'
  
  def index
    @tweets = Tweet.all
  end
  def new
    @tweet = Tweet.new
  end
  def create
    tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current)
    tweet.save
    redirect_to '/'
  end
end
