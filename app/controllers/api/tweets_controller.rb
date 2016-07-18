class Api::TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.new({
      author: params[:author],
      body: params[:body]
    })

    if @tweet.save
      render :show
    else
      render json: @comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body, :author)
  end
end
