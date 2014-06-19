module Refinery
  module Menus
    class Menu < Refinery::Core::BaseModel
      self.table_name = 'refinery_menus'

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, :uniqueness => true

      has_many :menu_items, as: :menuable, class_name: 'Refinery::Menus::MenuItem', dependent: :destroy
      accepts_nested_attributes_for :menu_items, allow_destroy: true
    end
  end
end
