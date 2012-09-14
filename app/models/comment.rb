class Comment < ActiveRecord::Base
  attr_accessible :shot_id, :text, :user_id

  belongs_to :shot
  belongs_to :user
end
