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

        def link_to_add_sub_fields(name, f, association)
          new_object = f.object.send(association).klass.new
          id = new_object.object_id
          fields = f.fields_for(association, new_object, child_index: id) do |builder|
            render("sub_" + association.to_s.singularize + "_fields", f: builder)
          end
          link_to(name, '#', class: "add_fields", data: {id: id, add: true, fields: fields.gsub("\n", "")})
        end

      end
    end
  end
end

::ActionView::Base.send(:include, ::Refinery::Menus::Admin::MenuItemsHelper)
