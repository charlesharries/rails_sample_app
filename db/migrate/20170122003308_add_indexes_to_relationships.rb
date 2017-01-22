class AddIndexesToRelationships < ActiveRecord::Migration[5.0]
  # Oops, forgot to add the indexes to the previous migration before I migrated
  # it. Here are the indices.
  def change

    add_index :relationships, :follower_id
    add_index :relationships, :followed_id
    add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
