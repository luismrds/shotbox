class AddAttachmentShotToShots < ActiveRecord::Migration
  def self.up
    change_table :shots do |t|
      t.has_attached_file :shot
    end
  end

  def self.down
    drop_attached_file :shots, :shot
  end
end
