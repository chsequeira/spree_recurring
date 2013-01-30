module Spree
  class CancellationData < ActiveRecord::Base
    belongs_to :subscription
    attr_accessible :comments, :reasons
  end
end
