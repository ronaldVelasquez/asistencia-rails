class CreateUsuarioLocals < ActiveRecord::Migration
  def change
    create_table :usuario_locals do |t|
      t.integer :cod_sede_operativa
      t.integer :cod_local_sede
      t.timestamps
    end
  end
end
