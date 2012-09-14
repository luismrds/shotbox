class Like < ActiveRecord::Base
  attr_accessible :shot_id, :user_id

  belongs_to :user
  belongs_to :shot
end
