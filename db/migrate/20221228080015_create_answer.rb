class CreateAnswer < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :questions, null: false, foreign_key: true
      t.boolean :is_correct
      t.string :title
      t.timestamps
    end
  end
end
