# TODO this should be able to be merged into the class_eval below
Spree::Product.instance_eval do
  delegate_belongs_to :master, :subscribable if Spree::Variant.table_exists? && Spree::Variant.column_names.include?("subscribable")
end

Spree::Product.class_eval do
  attr_accessible :subscribable

  def subscribable?
    master.subscribable?
  end
end

#TODO: removed in spree 1.2.x
Spree::Variant.additional_fields += [ {:name => 'Subscribable', :only => [:product,:variant], :use => 'select', :value => lambda { |controller, field| [["False", false], ["True", true]]  } } ]

