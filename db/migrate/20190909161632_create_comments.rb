class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :comment_id
      t.integer :presentation_id
      t.string :sentence

      t.timestamps
    end
  end
end
