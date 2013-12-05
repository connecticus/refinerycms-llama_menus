module Refinery
  module Menus
    class MenuItemDecorator < Draper::Decorator

      delegate_all

      def url
        if object.url?
          object.url
        elsif object.linkable
          object.linkable
        else
          ''
        end
      end
      
    end
  end
end
