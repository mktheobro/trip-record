class MapsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    # このあとで@mapに関するフォームを作るので、Mapインスタンスを作っておきます(でないとエラーになる)
    @map = Map.new
    @maps = Map.all
  end

  def new
  
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to maps_url
    else
      @maps = Map.all
      render 'maps/index'
    end
  end

  def show
  
  end

  private

  # ストロングパラメーター
  def map_params
    params.require(:map).permit(:address, :latitude, :longitude, :title, :comment)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
