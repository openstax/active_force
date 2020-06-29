module ActiveModel
  class NullMutationTracker # :nodoc:
    include Singleton

    def changed_attribute_names(*)
      []
    end

    def changed_values(*)
      {}
    end

    def changes(*)
      {}
    end

    def change_to_attribute(attr_name)
    end

    def any_changes?(*)
      false
    end

    def changed?(*)
      false
    end

    def changed_in_place?(*)
      false
    end

    def forget_change(*)
    end

    def original_value(*)
    end

    def force_change(*)
    end
  end
end

