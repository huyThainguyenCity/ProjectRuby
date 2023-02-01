class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :short_description
      t.string :detail
      t.string :number_of_question
      t.integer :time_out
      t.string :image
      t.integer :mark
      t.timestamps
    end
  end
end
