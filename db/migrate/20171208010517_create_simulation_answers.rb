class CreateSimulationAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :simulation_answers do |t|
      t.references :user, foreign_key: true
      t.references :simulation, foreign_key: true

      t.timestamps
    end
  end
end
