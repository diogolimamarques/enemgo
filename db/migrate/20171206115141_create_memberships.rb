class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.date :start_date
      t.date :expire_date
      t.reference :user
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
