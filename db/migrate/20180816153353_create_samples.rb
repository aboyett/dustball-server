class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.float :temperature, null: false, default: 0, index: true
      t.float :humidity, null: false, default: 0, index: true
      t.float :pressure, null: false, default: 0, index: true
      t.integer :eco2, null: false, default: 0, index: true
      t.integer :tvoc, null: false, default: 0, index: true
      t.float :ccs_temperature, null: false, default: 0, index: true
      t.integer :lux, null: false, default: 0, index: true
      t.integer :full_light, null: false, default: 0, index: true
      t.integer :ir, null: false, default: 0, index: true
      t.integer :visible, null: false, default: 0, index: true
      t.integer :pm1, null: false, default: 0, index: true
      t.integer :pm25, null: false, default: 0, index: true
      t.integer :pm10, null: false, default: 0, index: true
      t.float :dust_density, null: false, default: 0, index: true

      t.timestamps
    end
  end
end
