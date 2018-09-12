class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :relevance
      t.string :problem_def
      t.string :general_def
      t.string :specific_def
      t.string :confidence
      t.text :general_evaluation
      t.text :personal_message
      t.boolean :is_edited
      t.references :paper, foreign_key: true

      t.timestamps
    end
  end
end
