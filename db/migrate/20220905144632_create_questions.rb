class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :formulary_id
      t.string :type

      t.timestamps
    end
  end
end
