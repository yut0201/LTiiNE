class RemoveCommentidFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :comment_id, :string
  end
end
