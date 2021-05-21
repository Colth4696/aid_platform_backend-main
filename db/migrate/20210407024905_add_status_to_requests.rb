class AddStatusToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :fulfilled, null: false, :boolean, :default => false 
  end
end
