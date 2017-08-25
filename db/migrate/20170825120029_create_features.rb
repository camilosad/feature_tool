class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.references :user, foreign_key: true, index: true
      t.string :name, null: false
      t.string :description, null: false
      t.string :stakeholder, null: false
      t.text :documentation
      t.datetime :required_at

      t.timestamps
    end
  end
end
