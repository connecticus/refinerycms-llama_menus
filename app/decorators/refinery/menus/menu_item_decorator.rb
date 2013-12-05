module Refinery
  module Menus
    class MenuItemDecorator < Draper::Decorator

      delegate_all

      def url(routing_proxy=nil)
        if object.url?
          object.url
        elsif object.linkable
          if routing_proxy.present?
            [routing_proxy, object.linkable]
          else
            object.linkable
          end
        else
          ''
        end
      end
      
    end
  end
end
