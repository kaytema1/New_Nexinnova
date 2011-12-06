class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :pages, :advertisements, :articles
  def pages
    @pages ||= Page.all  
  end
  
  def advertisements
    @advertisements ||= Advertisement.all
  end
  
  def articles
    @articles ||= Article.all
  end
  


end
