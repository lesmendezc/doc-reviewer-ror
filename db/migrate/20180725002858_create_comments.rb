class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :commentary
      t.references :paper, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
