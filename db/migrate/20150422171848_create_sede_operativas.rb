class CreateSedeOperativas < ActiveRecord::Migration
  def change
    create_table :sede_operativas do |t|
      t.integer :cod_sede_operativa
      t.string :sede_operativa

      t.timestamps
    end
  end
end
