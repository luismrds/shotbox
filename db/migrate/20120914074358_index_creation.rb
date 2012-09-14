class IndexCreation < ActiveRecord::Migration
  def up
    add_index(:comments, :user_id)
    add_index(:comments, :shot_id)
    add_index(:follows, :follower_id)
    add_index(:follows, :followable_id)
    add_index(:likes, :user_id)
    add_index(:likes, :shot_id)
    add_index(:shots, :user_id)
    add_index(:taggings, :taggable_id)
    add_index(:taggings, :tagger_id)
    add_index(:tags, :name)
  end

  def down
  end
end
