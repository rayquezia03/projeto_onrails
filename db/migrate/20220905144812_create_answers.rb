class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :formulary_id
      t.integer :question_id
      t.integer :visit_id
      t.datetime :answered_at

      t.timestamps
    end
  end
end
