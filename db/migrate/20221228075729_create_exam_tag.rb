class CreateExamTag < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_tags do |t|
      t.references :tags, null: false, foreign_key: true
      t.references :exams, null: false, foreign_key: true
      t.timestamps
    end
  end
end
