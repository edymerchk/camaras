class Camara < ActiveRecord::Base
  
  validates_presence_of :direccion, :sector

  validates :link, presence: true, format: URI::regexp(%w(http https))
  self.per_page = 9


  scope :search, ->(q) { where("direccion ilike :q or sector ilike :q", {q: "%#{q}%"})}


end
