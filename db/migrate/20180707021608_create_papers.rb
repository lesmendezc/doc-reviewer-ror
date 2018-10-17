class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.string :title
      t.text :resume
      t.text :general_purpose
      t.text :specific_purpose
      t.text :problem_definition
      t.string :google_docs_link
      t.integer :comments_count, default: 0

      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end

    Paper.find_each { |p| Paper.reset_counters(p.id, :comments)}
  end
end
