class CreateSimulations < ActiveRecord::Migration[5.1]
  def change
    create_table :simulations do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :user, foreign_key: true
      t.float :score
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
