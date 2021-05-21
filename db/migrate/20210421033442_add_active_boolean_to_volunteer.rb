class AddActiveBooleanToVolunteer < ActiveRecord::Migration[6.0]
  def change
    add_column :volunteers, :active, :boolean, :default => true
  end
end
