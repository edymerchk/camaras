FactoryGirl.define do 
  factory :camara do
    direccion "Av. 80 - Calle 30"
    link "http://www.medellin.gov.co/transito/images_jq/imagen22.jpg"
    sector "Avenida 80 - Calle 30 - Metroplus"

    factory :camara_33 do
      direccion "Carrera 62 - Calle 37 Puente de La 33"
      link "http://www.medellin.gov.co/transito/images_jq/imagen2.jpg"
      sector "Avenida Regional - Puente de la 33"
    end
  end
end