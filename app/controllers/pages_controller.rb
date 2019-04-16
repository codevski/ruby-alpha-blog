class PagesController < ApplicationController

  def home
    # If user us logged in just display articles page
    redirect_to articles_path if logged_in?
  end

  def about

  end
  
end