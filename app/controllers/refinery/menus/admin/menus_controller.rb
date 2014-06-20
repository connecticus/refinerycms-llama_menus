module Refinery
  module Menus
    module Admin
      class MenusController < ::Refinery::AdminController

        crudify :'refinery/menus/menu',
                :title_attribute => 'name',
                :xhr_paging => true

        private

        def menu_params
          params.require(:menu).permit!
        end

      end
    end
  end
end
