class AddMenuableIdAndTypeToMenuItems < ActiveRecord::Migration

  def change 
    rename_column :refinery_menu_items, :menu_id, :menuable_id
    add_column :refinery_menu_items, :menuable_type, :string
  end

end
