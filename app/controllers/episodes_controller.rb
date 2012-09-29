class EpisodesController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :get_season

  def index
    @episodes = @season.episodes
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @episode = @season.episodes.build
  end
  
  def create
    @episode = @season.episodes.build(params[:episode])
    if @episode.save
      redirect_to season_episodes_path, 
                              notice: "Episode created!"
    else
      render action: "new"
    end
  end
  
  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update_attributes(params[:episode])
      redirect_to season_episodes_path
    else
      redirect_to :back
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    flash[:notice] = "Episode deleted!"
    redirect_to season_episodes_url
  end
  
  protected
  
    def get_season
      @season ||= Season.find(params[:season_id])
    end
end
