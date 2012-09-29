class SeasonsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @seasons = Season.all
  end

  def new
    @season = Season.new
  end
  
  def show
    redirect_to seasons_path
  end

  def edit
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.create(params[:season])
    if @season.save
      respond_with(@season)
    else
      redirect_to :back
    end
  end

  def update
    @season = Season.find(params[:id])
    if @season.update_attributes(params[:season])
      redirect_to @season
    else
      redirect_to :back
    end
  end

  def destroy
    @season = Season.find(params[:id])
    @season.destroy
    redirect_to seasons_url
  end
end
