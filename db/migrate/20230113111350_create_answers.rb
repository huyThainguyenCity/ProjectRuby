class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true
      t.boolean :is_correct, default: true
      t.string :title
      t.timestamps
    end
  end
end
