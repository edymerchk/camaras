require "spec_helper"

describe CamarasController do

  context "basics" do
    let(:camara) {create(:camara)}
    let(:camara_33) {create(:camara_33)}
    describe 'GET #index' do

      it "returns the list of the camaras" do       
        get :index
        expect(assigns(:camaras)).to eq [camara]
      end
      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
      it "query the list of the camaras matching q parameter" do       
        get :index, q: "La 33"
        expect(assigns(:camaras)).to include camara_33  
      end
       it "query the list of the camaras matching q parameter" do       
        get :index, q: "La 33"
        expect(assigns(:camaras)).to_not include camara 
      end
    end
    describe 'GET #show' do

      it "return a camara in json format and 200 status" do       
        get :show, id: camara, format: :json
        expect(response.status).to eq(200)
        expect(response.body).to have_content camara.to_json
      end
    end
  end
end