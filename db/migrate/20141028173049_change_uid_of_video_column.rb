class ChangeUidOfVideoColumn < ActiveRecord::Migration
  def change
    remove_column :videos, :uid, :integer
    add_column :videos, :user_id, :integer
  end
end
