class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'You just tweeted!' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end

end










