class CreateExamTags < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true
      t.timestamps
    end
  end
end
