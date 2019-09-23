class MapsController < ApplicationController

  def index
    @maps = Map.all
  end

  def new
    @map = Map.new
  end

  def create
    Map.create(map_params)
    redirect_to root_path
  end 

  private 

  def map_params
    params.require(:map).permit(:name)
  end

end
