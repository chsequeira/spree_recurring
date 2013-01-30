class CreateExpiryNotifications < ActiveRecord::Migration
  def change
    create_table :spree_expiry_notifications do |t|
      t.references :subscription
      t.integer :interval
      t.timestamps
    end
  end
end
