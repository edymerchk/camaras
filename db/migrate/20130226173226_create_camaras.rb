class CreateCamaras < ActiveRecord::Migration
  def change
    create_table :camaras do |t|
      t.string :direccion
      t.string :sector
      t.string :link

      t.timestamps
    end
  end
end
