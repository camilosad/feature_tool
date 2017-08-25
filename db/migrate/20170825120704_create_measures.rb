class CreateMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :measures do |t|
      t.integer :section, null: false, default: 0
      t.string :name, null: false, default: ''
      t.string :hint, null: false, default: ''
      t.string :start_hint, null: false, default: ''
      t.string :end_hint, null: false, default: ''
      t.boolean :required, null: false, default: false
      t.integer :allocation_percent, null: false, default: 100
      t.integer :position, null: false, default: 0

      t.timestamps
    end
  end
end
