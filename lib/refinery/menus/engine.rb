module Refinery
  module Menus
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Menus

      engine_name :refinery_menus

      initializer "register refinerycms_menus plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "menus"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.menus_admin_menus_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/menus/menu',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Menus)
      end

      Refinery::Core.configure do |config| #   # Register extra javascript for backend
        config.register_stylesheet "refinery/menus", :media => 'screen'
      end

      config.to_prepare do
        Dir["#{File.dirname(__FILE__)}/../../../app/helpers/**/*.rb"].each { |f| load(f) }
        Dir["#{File.dirname(__FILE__)}/../../../app/decorators/**/*.rb"].each { |f| load(f) }
      end
    end
  end
end
