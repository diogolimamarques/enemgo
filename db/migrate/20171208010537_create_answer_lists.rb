class CreateAnswerLists < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_lists do |t|
      t.references :question, foreign_key: true
      t.references :alternative, foreign_key: true
      t.references :simulation_answer, foreign_key: true

      t.timestamps
    end
  end
end
