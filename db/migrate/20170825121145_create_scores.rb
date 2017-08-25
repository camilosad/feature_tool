class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.references :measure, foreign_key: true, index: true
      t.references :feature, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.integer :value, null: false, default: 0

      t.timestamps
    end
  end
end
