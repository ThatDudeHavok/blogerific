class ChangeCommentsColumnCommenterToCommentor < ActiveRecord::Migration
  def change
    rename_column :comments, :commenter, :commentor
  end
end
