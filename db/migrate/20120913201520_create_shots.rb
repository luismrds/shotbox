class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :caption
      t.string :description
      t.integer :user_id
      t.integer :likes

      t.timestamps
    end
  end
end
