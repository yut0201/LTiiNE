class AddColumnToPresentation < ActiveRecord::Migration[5.2]
  def change
    add_column :presentations, :link_url, :string
  end
end
