class CreateMenusMenuWidgets < ActiveRecord::Migration

  def up
    create_table :refinery_menu_widgets do |t|
      t.integer :menu_id
      t.integer :widget_id
      t.string  :style

      t.timestamps
    end

  end

  def down
    drop_table :refinery_menu_widgets

  end

end
