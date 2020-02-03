class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @restaurants = current_user.restaurants
    authorize(@restaurants)
  end
end
