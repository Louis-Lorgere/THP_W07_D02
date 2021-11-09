class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.string :stripe_customer_id
      t.timestamps
    end
  end
end
