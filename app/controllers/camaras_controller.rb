class CamarasController < ApplicationController
	respond_to :html, :json, :js 
  def index
  	@camaras = Camara.paginate(:page => params[:page])
  	# @camara = Camara.offset(rand(Camara.count)).first  
  end

  def show
  	@camara = Camara.find(params[:id])
  	render json: @camara	  	
  end
end
