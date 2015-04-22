class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.integer :cod_sede_operativa
      t.integer :cod_local_sede
      t.string :nombreLocal
      t.string :direccion
      t.string :refencia
      t.integer :naula
      t.string :estado

      t.timestamps
    end
  end
end
