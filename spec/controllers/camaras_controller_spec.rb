require "spec_helper"

describe CamarasController do

  context "basics" do
    let(:camara) {create(:camara)}
    describe 'GET #index' do

      it "returns the list of the camaras" do       
        get :index
        expect(assigns(:camaras)).to eq [camara]
      end
      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
    end
    describe 'GET #show' do

      it "return a camara in json format and 200 status" do       
        get :show, id: camara
        expect(response.status).to eq(200)
        expect(response.body).to have_content camara.to_json
      end
    end
  end
end