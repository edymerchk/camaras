class CamarasController < ApplicationController
	respond_to :html, :json, :js 
  def index
  	@camaras = Camara.all
  	@camara = Camara.last # change to rnd
  end

  def show
  	@camara = Camara.find(params[:id])
  	render json: @camara	  	
  end
end
