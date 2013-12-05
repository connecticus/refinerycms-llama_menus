module Refinery
  module Menus
    class MenuWidget < ActiveRecord::Base

      self.table_name = 'refinery_menu_widgets'
      
      belongs_to :menu, class_name: 'Refinery::Menus::Menu'

      acts_as_widget 

      attr_accessible :style, :menu_id, :widget_id

    end
  end
end
