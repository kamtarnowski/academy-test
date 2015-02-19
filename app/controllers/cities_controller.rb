class CitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end
end
