class HomePageController < ApplicationController
  skip_before_action :authorized, only: [:index]

  # Render the hompage on route /
  def index
  end
end
