class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.text :statement
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
