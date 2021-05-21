class RemoveStatusTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :statuses
  end
end
