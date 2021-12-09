class HomeController < ApplicationController
  def index
  end

  def terms
  end

  def privacy
  end

  def test
    respond_to do |format|
     format.js
    end
  end
end
