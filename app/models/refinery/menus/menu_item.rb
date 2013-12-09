module Refinery
  module Menus
    class MenuItem < ActiveRecord::Base
      self.table_name = 'refinery_menu_items'

      attr_accessible :label, :position, :linkable_type, :linkable_id, :menu_id, :url, :linkable

      belongs_to :menu, class_name: 'Refinery::Menus::Menu'
      belongs_to :linkable, polymorphic: true

      validates :label, :presence => true
      validates :linkable, :presence => {:unless => 'url?'}
      validates :url, :presence => {:unless => 'linkable_type?'}

    end
  end
end
