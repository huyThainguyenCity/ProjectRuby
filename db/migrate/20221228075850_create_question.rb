class CreateQuestion < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.references :exams, null: false, foreign_key: true
      t.timestamps
    end
  end
end