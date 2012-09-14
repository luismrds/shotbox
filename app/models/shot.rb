class Shot < ActiveRecord::Base
  attr_accessible :caption, :description, :likes, :user_id, :shot
  has_attached_file :shot, :styles => { :medium => "400x300>", :thumb => "100x100>" }

  belongs_to :user
  has_many :comments
end
