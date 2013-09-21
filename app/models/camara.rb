class Camara < ActiveRecord::Base
  attr_accessible :direccion, :link, :sector
  
  validates :sector, presence: true
  validates :direccion, presence: true
  validates :link, presence: true, format: URI::regexp(%w(http https))
  self.per_page = 9


  scope :search, ->(q) { where("direccion ilike :q or sector ilike :q", {q: "%#{q}%"})}


end
