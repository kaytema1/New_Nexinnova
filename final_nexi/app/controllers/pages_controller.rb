class PagesController < ApplicationController
  
  before_filter :authenticate_user! , :except =>  [:show, :index]
  
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
    @page_articles = @page.articles.(paginate :page => params[:page], :per_page => 10)  
    @page_ads = @page.ads.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to @page, :notice => "Successfully created page."
    else
      render :action => 'new'
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to @page, :notice  => "Successfully updated page."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url, :notice => "Successfully destroyed page."
  end
end
