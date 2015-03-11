class HomeController < ApplicationController
  def index
  end

  def angular
    render text: '', layout: 'application'
  end
end
