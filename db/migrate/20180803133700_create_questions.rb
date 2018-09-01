class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.string :answer_type
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
