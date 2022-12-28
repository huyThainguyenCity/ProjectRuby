class CreateExamAnswer < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_answers do |t|
      t.references :questions, null: false, foreign_key: true
      t.references :answers, null: false, foreign_key: true
      t.timestamps
    end
  end
end
