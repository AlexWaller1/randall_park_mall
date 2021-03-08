class CreateGasStations < ActiveRecord::Migration[6.1]
  def change
    create_table :gas_stations do |t|
      t.string :name
      t.string :address
      t.text :minimart
      t.references :state

      t.timestamps
    end
  end
end
