module Refinery
  module Menus
    class MenuItem < ActiveRecord::Base
      self.table_name = 'refinery_menu_items'

      attr_accessible :label, :position, :linkable_type, :linkable_id,
        :url, :linkable, :menuable, :menu_items_attributes

      belongs_to :menuable, polymorphic: true
      belongs_to :linkable, polymorphic: true
      has_many :menu_items, as: :menuable, class_name: 'Refinery::Menus::MenuItem', dependent: :destroy

      validates :label, :presence => true
      validates :linkable, :presence => {:unless => 'url?'}
      validates :url, :presence => {:unless => 'linkable_type?'}

      alias_attribute :sub_menu_items, :menu_items
      accepts_nested_attributes_for :menu_items, allow_destroy: true

    end
  end
end
