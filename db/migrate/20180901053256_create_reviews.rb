class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :relevance
      t.string :problem_def
      t.string :general_def
      t.string :specific_def
      t.string :confidence
      t.string :general_evaluation
      t.text :general_evaluation_text
      t.text :personal_message
      t.boolean :is_edited, default: false
      t.integer :counter
      t.integer :copy_id
      t.boolean :is_new, default: true

      t.integer :paper_id
      t.integer :user_id

      t.timestamps
    end
  end
end
