class CreateCapacitacions < ActiveRecord::Migration
  def change
    create_table :capacitacions do |t|

      t.timestamps
    end
  end
end
