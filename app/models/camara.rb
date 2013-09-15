class Camara < ActiveRecord::Base
  attr_accessible :direccion, :link, :sector

  self.per_page = 9
end
