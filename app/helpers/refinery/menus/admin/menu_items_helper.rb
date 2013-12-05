module Refinery
  module Menus
    module Admin
      module MenuItemsHelper
      
        def options_for_select_from_linkable_class(linkable_class)
          linkable = Linkable.new(linkable_class)
          blank = ["Select a #{linkable.human_class_name.downcase}..."]
          rows = linkable.klass.all.map{|object| [object.send(linkable.name_attribute), object.id] }
          blank + rows
        end

      end
    end
  end
end

::ActionView::Base.send(:include, ::Refinery::Menus::Admin::MenuItemsHelper)
