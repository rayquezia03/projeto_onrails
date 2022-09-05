class CreateVisits < ActiveRecord::Migration[7.0]
  def change
    create_table :visits do |t|
      t.datetime :data
      t.string :status
      t.integer :user_id
      t.datetime :checkin_at
      t.datetime :checkout_at

      t.timestamps
    end
  end
end
