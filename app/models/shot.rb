class Shot < ActiveRecord::Base
  attr_accessible :caption, :description, :likes, :user_id
end
