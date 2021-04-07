class RemoveFulfilledFromRequest < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :fulfilled
  end
end
