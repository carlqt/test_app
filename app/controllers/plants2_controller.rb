class Plants2Controller < ApplicationController
  def index
    @plants = Plant.all

    respond_to do |format|
      format.html #index.html.erb
      format.json { render json: @plants }
    end
  end

  def show

  end

  def destroy
  	binding.pry
  	@plant = Plant.find(params[:id])
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants2_index_path }
      format.json 
    end
  end

  def destroy_multiple
  	Plant.destroy(params[:plant])

  	respond_to do |format|
  		format.html { redirect_to plants2_index_path }
  		format.json { head :no_content }
  	end
  end
end
