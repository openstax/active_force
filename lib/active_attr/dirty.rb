require 'active_support'
require 'active_model/dirty'
require "active_model/attribute_mutation_tracker"
require 'active_attr'

module ActiveAttr
  module Dirty
    extend ActiveSupport::Concern
    include ActiveModel::Dirty

    module ClassMethods
      def attribute!(name, options={})
        super(name, options)
        define_method("#{name}=") do |value|
          send("#{name}_will_change!") unless value == read_attribute(name)
          super(value)
        end
      end
    end

    def attributes_and_changes
      attributes.select { |attr, key| changed.include? attr }
    end

    def mutations_from_database
      @mutations_from_database ||= ActiveModel::NullMutationTracker.instance
    end

    def forget_attribute_assignments
      @attributes if defined?(@attributes)
    end
  end
end
