class IndividualsController < ApplicationController
  respond_to :html, :xml, :json
  
  def edit
  end

  def index
    cast_or_crew(@episode.individuals)
  end

  def new
  end

  def show
  end
  
  private

  def cast_or_crew(individuals)
    @cast, @crew = [], []
    individuals.each do |individual|
      if individual.cast
        @cast << individual
      else
        @crew << individual
      end
    end
  end
end
