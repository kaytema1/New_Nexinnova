class NewsfeedsController < ApplicationController
  def index
    @newsfeeds = Newsfeed.all
  end

  def show
    @newsfeed = Newsfeed.find(params[:id])
  end

  def new
    @newsfeed = Newsfeed.new
  end

  def create
    @newsfeed = Newsfeed.new(params[:newsfeed])
    if @newsfeed.save
      redirect_to @newsfeed, :notice => "Successfully created newsfeed."
    else
      render :action => 'new'
    end
  end

  def edit
    @newsfeed = Newsfeed.find(params[:id])
  end

  def update
    @newsfeed = Newsfeed.find(params[:id])
    if @newsfeed.update_attributes(params[:newsfeed])
      redirect_to @newsfeed, :notice  => "Successfully updated newsfeed."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @newsfeed = Newsfeed.find(params[:id])
    @newsfeed.destroy
    redirect_to newsfeeds_url, :notice => "Successfully destroyed newsfeed."
  end
end
