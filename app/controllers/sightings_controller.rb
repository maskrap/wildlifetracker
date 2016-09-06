class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
    @regions = Region.all

  end

  def create
    #binding.pry
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new(sighting_params)
    if @sighting.save
      redirect_to species_path(@sighting.species)
    else
      render :new
    end
  end

  def edit
    @species = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def update
    @species = Species.find(params[:id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      flash[:notice] = "Sighting updated!"
      redirect_to species_path(@sighting.species)
    else
      render :edit
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    flash[:notice] = "Sighting deleted"
    redirect_to species_path
  end


  private
    def sighting_params
      params.require(:sighting).permit(:region_id, :date, :longitude, :latitude)
    end
end
