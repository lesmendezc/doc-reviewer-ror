class CreateAssingments < ActiveRecord::Migration[5.2]
  def change
    create_table :assingments do |t|
      t.integer :director_id
      t.integer :tutor_id
      t.integer :relator_id
      t.references :paper, foreign_key: true

      t.timestamps
    end
  end
end
