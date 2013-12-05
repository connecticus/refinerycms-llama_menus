class CreateMenusMenuItems < ActiveRecord::Migration

  def up
    create_table :refinery_menu_items do |t|
      t.string  :label
      t.integer :position
      t.string  :linkable_type
      t.integer :linkable_id
      t.string  :url
      t.integer :menu_id

      t.timestamps
    end

  end

  def down
    drop_table :refinery_menu_items

  end

end
