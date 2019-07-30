class AddEventIdToPresentation < ActiveRecord::Migration[5.2]
  def change
    add_reference :presentations, :Event, foreign_key: true
  end
end
