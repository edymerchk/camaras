class CamarasController < ApplicationController
  
	respond_to :html, :js 
  respond_to :json, only: :show

  def index
    @camaras = Camara.search(params[:q]).paginate(page: params[:page])
    respond_with(@camaras)
  end

  def show
  	@camara = Camara.find(params[:id])
    respond_with(@camara)	  	
  end
end
