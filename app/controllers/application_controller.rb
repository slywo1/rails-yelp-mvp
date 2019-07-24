class ApplicationController < ActionController::Base
  def top
    @restaurants = Restaurant.where(stars: 5)
  end
end
