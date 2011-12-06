class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
    @pages = Page.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
    @pages = Page.all
  end

  def new
    @advertisement = Advertisement.new
    @pages = Page.all
  end

  def create
    @advertisement = Advertisement.new(params[:advertisement])
    if @advertisement.save
    redirect_to @advertisement, :notice => "Successfully created advertisement."
    else
    render :action => 'new'
    end
  end

  def edit
    @advertisement = Advertisement.find(params[:id])
    @pages = Page.all
  end

  def update
    @advertisement = Advertisement.find(params[:id])
    if @advertisement.update_attributes(params[:advertisement])
    redirect_to @advertisement, :notice  => "Successfully updated advertisement."
    else
    render :action => 'edit'
    end
  end

  def destroy
    @advertisement = Advertisement.find(params[:id])
    @advertisement.destroy
    redirect_to advertisements_url, :notice => "Successfully destroyed advertisement."
  end
end
