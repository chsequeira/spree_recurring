Spree::LineItem.class_eval do
  def creates_subscription?
    (self.variant.is_master? && self.variant.product.subscribable?) || (!self.variant.is_master? && self.variant.subscribable?)
  end
end
