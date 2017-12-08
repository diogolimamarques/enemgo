class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :statement
      t.integer :status
      t.string :source
      t.references :user, foreign_key: true
      t.integer :area

      t.timestamps
    end
  end
end
