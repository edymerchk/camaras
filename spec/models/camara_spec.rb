require 'spec_helper'

describe Camara do 
  context "base" do
    it "has a valid factory" do
      expect(create(:camara)).to be_valid
    end
  end

  context "validations" do 
    let(:camara) {build(:camara)}

    [:link, :sector, :direccion].each do |field|
       it "validates #{field} presence" do
        camara.send("#{field}=", nil)
        expect(camara).to_not be_valid
      end
    end
  end 
end