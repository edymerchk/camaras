class CamarasController < ApplicationController
	respond_to :html, :json, :js 
  def index
  	@camaras = Camara.paginate(:page => params[:page])
    respond_to do |format|
      format.html
      format.js
    end 
  end

  def show
  	@camara = Camara.find(params[:id])
  	render json: @camara	  	
  end
end
