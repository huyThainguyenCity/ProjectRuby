class CreateUserExam < ActiveRecord::Migration[7.0]
  def change
    create_table :user_exams do |t|
      t.references :users, null: false, foreign_key: true
      t.references :exams, null: false, foreign_key: true
      t.references :exam_answers, null: false, foreign_key: true
      t.timestamps
    end
  end
end
