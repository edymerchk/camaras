# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Camara.destroy_all
Camara.create(direccion: "Av. 80 - Calle 30", sector: "Avenida 80 - Calle 30 - Metroplus", link: "http://www.medellin.gov.co/transito/images_jq/imagen22.jpg")
Camara.create(direccion: "Carrera 62 - Calle 37 Puente de La 33", sector: "Avenida Regional - Puente de la 33", link: "http://www.medellin.gov.co/transito/images_jq/imagen2.jpg")
Camara.create(direccion: "Calle 16 - Carrera 32", sector: "Avenida Las Palmas - Resto- Asia", link: "http://www.medellin.gov.co/transito/images_jq/imagen3.jpg")
Camara.create(direccion: "Carrera 64C - Calle 67 Coca Cola", sector: "Autopista Norte - Fiscalia -Coca cola", link: "http://www.medellin.gov.co/transito/images_jq/imagen4.jpg")
Camara.create(direccion: "Carrera 64C - Calle 104 Zenu", sector: "Autopista Norte - Zenu", link: "http://www.medellin.gov.co/transito/images_jq/imagen5.jpg")
Camara.create(direccion: "Autopista Norte - Solla", sector: "Carrera 64A - Calle 114 A Solla	", link: "http://www.medellin.gov.co/transito/images_jq/imagen6.jpg")
Camara.create(direccion: "Carrera 63 - Calle 77 Puente del Mico", sector: "Puente del Mico - Estacion Caribe", link: "http://www.medellin.gov.co/transito/images_jq/imagen7.jpg")
Camara.create(direccion: "Carrera 64C - Calle 78 Terminal del Norte", sector: "Autopista Norte - Terminal de Transporte", link: "http://www.medellin.gov.co/transito/images_jq/imagen8.jpg")




