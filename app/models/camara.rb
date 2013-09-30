# == Schema Information
#
# Table name: camaras
#
#  id         :integer          not null, primary key
#  direccion  :string(255)
#  sector     :string(255)
#  link       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Camara < ActiveRecord::Base
  
  validates_presence_of :direccion, :sector

  validates :link, presence: true, format: URI::regexp(%w(http https))
  self.per_page = 9


  scope :search, ->(q) { where("direccion ilike :q or sector ilike :q", {q: "%#{q}%"})}


end
