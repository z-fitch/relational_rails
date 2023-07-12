class MuseumsController < ApplicationController
  def index
    @museums = Museum.all.recently_created
  end

  def show
    @museum = Museum.find(params[:id])
  end

  # def new
  #   museum = Museum.create(museum_params)
  #   redirect_to "/museum"
  # end



  # private
  # def museum_params
  #   params.permit(:name,
  #                 :floors,
  #                 :exhibits,
  #                 :can_fit_more_art,
  #                 :occupancy)
  # end
end


