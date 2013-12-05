class CreateMenusMenus < ActiveRecord::Migration

  def up
    create_table :refinery_menus do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-menus"})
    end

    drop_table :refinery_menus

  end

end
