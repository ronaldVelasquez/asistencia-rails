class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :vercod
      t.integer :v_padron
      t.integer :v_sistem
      t.datetime :f_registro
      t.integer :id_even
      t.datetime :des_ini
      t.datetime :des_fin
      t.string :observa

      t.timestamps
    end
  end
end
