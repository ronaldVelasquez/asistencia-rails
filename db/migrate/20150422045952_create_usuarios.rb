class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuario
      t.string :clave
      t.string :nombres_apellidos 
      t.string :estado
      t.integer :id_rol
      t.timestamps
    end
  end
end
