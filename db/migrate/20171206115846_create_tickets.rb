class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.text :message
      t.string :motive
      t.references :user, foreign_key: true
      t.references :ticketable, polymorphic: true

      t.timestamps
    end
  end
end
