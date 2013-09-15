class CamarasController < ApplicationController
	respond_to :html, :json, :js 
  def index
    puts "entra con #{params[:page]}"
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
