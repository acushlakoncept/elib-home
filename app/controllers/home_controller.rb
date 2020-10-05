# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def book
    render layout: 'auth'
  end

  def about; end

  def terms; end

  def privacy; end
end
