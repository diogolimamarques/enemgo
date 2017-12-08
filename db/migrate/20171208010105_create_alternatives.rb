class CreateAlternatives < ActiveRecord::Migration[5.1]
  def change
    create_table :alternatives do |t|
      t.text :statement
      t.references :question, foreign_key: true
      t.boolean :veracity

      t.timestamps
    end
  end
end
