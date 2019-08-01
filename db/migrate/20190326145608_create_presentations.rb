class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.string :presentation_name
      t.text :description
      t.integer :likes
      t.string :display_name

      t.timestamps
    end
  end
end
