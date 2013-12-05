module Refinery
  module Menus
    include ActiveSupport::Configurable

    config_accessor :linkable_classes

    self.linkable_classes = [{class_name: 'Refinery::Page', name_attribute: :title}]

    def self.linkables
      ret = []
      self.linkable_classes.each do |linkable_class|
        ret << Linkable.new(linkable_class) 
      end
      ret
    end

    class Linkable
      attr_accessor :class_name, :name_attribute, :human_class_name, :klass

      def initialize(params)
        if params.is_a? Hash
          @class_name = params[:class_name]
          @name_attribute = params[:name_attribute]
        elsif params.is_a? String
          @class_name = params
          @name_attribute = :name
        else
          raise 'Unknown link initialize params'
        end
        @klass = class_name.constantize
        @human_class_name = @klass.model_name.human
      end
    end
    
  end
end
