class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :event_date
      t.string :presentation_name1
      t.string :presentation_name2
      t.string :presentation_name3
      t.string :presentation_name4

      t.timestamps
    end
  end
end
