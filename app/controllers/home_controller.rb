class HomeController < ApplicationController
  def index
  end

  def book
    render :layout => 'auth'
  end

  def terms
  end

  def privacy
  end
end
