class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :caption
      t.string :description
      t.integer :user_id
      t.integer :likes , :default => 0

      t.timestamps
    end
  end
end
